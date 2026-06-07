//
//  AccountView.swift
//  GeekFood
//
//  Created by dmitry arkharov on 12/02/2024.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var accountViewModel = AccountViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField { case firstName, lastName, email }
    
    var body: some View {
        NavigationView{
            VStack {
                Form{
                    Section(header: Text ("Personal Info")) {
                        TextField("First Name", text: $accountViewModel.user.firstName)
                            .focused($focusedTextField, equals: .firstName)
                            .onSubmit { focusedTextField = .lastName }
                            .submitLabel(.next)
                        
                        TextField("Last Name", text: $accountViewModel.user.lastName)
                            .focused($focusedTextField, equals: .lastName)
                            .onSubmit { focusedTextField = .email}
                            .submitLabel(.next)
                        
                        TextField("Email", text: $accountViewModel.user.email)
                            .focused($focusedTextField, equals: .email)
                            .onSubmit { focusedTextField = nil }
                            .submitLabel(.done)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        DatePicker("Birht Date", 
                                   selection: $accountViewModel.user.birthDate,
                                   in: Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo,
                                   displayedComponents: .date)
                    }
                    
                    Section(header: Text ("Additional Requests")) {
                        Toggle("Extra Napkins", isOn: $accountViewModel.user.extraNapkins)
                        Toggle("Frequent Refills", isOn: $accountViewModel.user.frequentRefills)
                        Toggle("Hot Souce", isOn: $accountViewModel.user.hotSouce)
                        Toggle("Soy Souce", isOn: $accountViewModel.user.soySouce)
                        Toggle("Ketchup", isOn: $accountViewModel.user.ketchup)
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                }
                .navigationTitle("🧾 Your Account")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button("Dissmiss Keyboard") { focusedTextField = nil }
                    }
                }
                .onAppear {
                    accountViewModel.retrieveUser()
                }
                .alert(item: $accountViewModel.alertItem) { alertItem in
                    Alert(title: alertItem.title,
                          message: alertItem.message,
                          dismissButton: alertItem.dismissButton)
                }
                
                Button {
                    accountViewModel.saveChanges()
                } label: {
                    GFButton(title: "Save Changes")
                }
                .padding(.bottom, 50)
            }
        }
    }
}
#Preview {
    AccountView()
}
