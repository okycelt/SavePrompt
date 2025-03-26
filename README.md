# SavePrompt

SavePrompt is a minimal reproduction project demonstrating that the save credentials prompt is not shown when the username and new password fields are not the last inputs in a form.

Ensure that associated domains are correctly configured. Refer to Apple's documentation for details: [Supporting Associated Domains](https://developer.apple.com/documentation/xcode/supporting-associated-domains).

## Steps to reproduce

1. Press _Navigate to registration_
2. Fill in _Login_, _Password_, _Repeat password_ and _Email_
3. Press _Submit_
4. The prompt should be shown at this point, but isn't.