# Security Policy

## 🔒 Reporting Security Vulnerabilities

If you discover a security vulnerability in the Carter Addon Pack, **please do NOT create a public GitHub issue**. Security vulnerabilities should be reported privately to protect users.

### How to Report

**Email:** Send details to the repository maintainer via GitHub private message or email (check GitHub profile for contact info)

**Include in your report:**
- Clear description of the vulnerability
- Steps to reproduce the issue
- Potential impact and severity
- Any suggested fixes (if you have them)
- Your contact information for follow-up

### What Happens Next

1. **Acknowledgment** - You'll receive confirmation within 48 hours
2. **Assessment** - We'll evaluate the severity and impact
3. **Fix Development** - A patch will be developed privately
4. **Testing** - The fix will be thoroughly tested
5. **Release** - A security update will be released
6. **Disclosure** - Public disclosure with credits to reporter

---

## 🛡️ What Qualifies as a Security Vulnerability?

### ✅ Security Issues (Report Privately)

The following are considered security vulnerabilities:

- **Remote Code Execution**: Bugs allowing clients to execute arbitrary Lua code on the server
- **Privilege Escalation**: Exploits giving normal players admin-level access
- **Server Access**: Bugs exposing server-only configurations to clients
- **Client Crashes**: Exploits that allow one player to crash other players intentionally
- **Data Exposure**: Leaking sensitive server information to unauthorized clients
- **Bypass Protection**: Methods to bypass server security measures (sandbox escapes, etc.)
- **Injection Attacks**: SQL injection, command injection, or similar attacks
- **DoS Attacks**: Exploits that allow crashing the server or causing severe lag

### ❌ Not Security Vulnerabilities (Report Publicly)

These should be reported as regular GitHub issues:

- **Client-Side Crashes**: Bugs that crash your own client (not exploitable by others)
- **Lua Errors**: Script errors that don't expose security risks
- **Performance Issues**: Lag or optimization problems
- **Visual Bugs**: Rendering or display issues
- **Balance Issues**: Gameplay balance or fairness concerns
- **Feature Requests**: New features or improvements

If you're unsure whether something is a security vulnerability, err on the side of caution and report it privately.

---

## 🔐 Supported Versions

| Version | Supported | Notes |
|---------|-----------|-------|
| `master` branch | ✅ Active | Latest development, receives all updates |
| Latest Release | ✅ Active | Current stable version |
| Older Releases | ❌ Not Supported | Upgrade to latest version |

**Security updates are only provided for:**
- The current `master` branch
- The most recent release

Previous releases will not receive backported security patches. Instead, a new release will be published with the fix.

---

## 🎯 Security Best Practices

### For Server Owners

- **Keep Updated**: Always use the latest version from GitHub or Steam Workshop
- **Monitor Logs**: Check server logs regularly for suspicious activity
- **Limit Permissions**: Use proper ULX/admin mod restrictions for CAP entities
- **Sandbox Settings**: Configure GMod sandbox settings appropriately
- **Regular Backups**: Maintain backups of your server data

### For Players

- **Download from Official Sources**: Only install CAP from GitHub or Steam Workshop
- **Report Suspicious Behavior**: If you see exploits being used, report to server admins
- **Don't Share Exploits**: Never publicly share security vulnerabilities

### For Developers

- **Review Code**: Check pull requests carefully for security implications
- **Validate Inputs**: Always validate and sanitize user inputs
- **Use Modern APIs**: Follow GMod best practices and use current APIs
- **Test Thoroughly**: Test changes in multiplayer scenarios

---

## 📜 Disclosure Policy

### Our Commitment

- We take security seriously and will respond promptly to reports
- Valid vulnerabilities will be patched as quickly as possible
- Security researchers will be credited (with permission)
- We'll maintain transparency while protecting users

### Timeline

- **Initial Response**: Within 48 hours
- **Assessment**: Within 1 week
- **Patch Development**: Varies by severity (critical: days, others: weeks)
- **Public Disclosure**: After patch is released and users have time to update

### Credits

Security researchers who responsibly disclose vulnerabilities will be credited in:
- The release notes for the security update
- The CHANGELOG.md file
- This SECURITY.md file (Hall of Fame section below)

---

## 🏆 Security Hall of Fame

Thank you to the following individuals for responsibly disclosing security issues:

*No security issues have been reported yet.*

---

## 📞 Contact

- **GitHub Issues**: For non-security bugs - [Open an Issue](https://github.com/QuentinMarical/cap/issues)
- **GitHub Discussions**: For questions - [Start a Discussion](https://github.com/QuentinMarical/cap/discussions)
- **Private Contact**: For security issues - Contact via GitHub profile

---

## 📚 Additional Resources

- **GMod Security Best Practices**: https://wiki.facepunch.com/gmod/
- **Lua Security**: https://www.lua.org/manual/5.1/
- **Wiremod Security**: https://github.com/wiremod/wire/wiki

---

**Remember:** If you're unsure whether something is a security issue, it's better to report it privately first. We'd rather evaluate a false alarm than have a real vulnerability disclosed publicly.

*Last Updated: December 4, 2025*
