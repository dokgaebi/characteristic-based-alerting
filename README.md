# characteristic-based-alerting
characteristic based alerting - work in progress

The Security Industry has conducted great efforts to reduce the alert fatigue experienced by the majority of security teams.  Many of these efforts are not aimed at the root causes of excessive alerting, but provide a remedy for the symptom to enable security teams to function in the near term.

Alert fatigue often results from 2 root causes:

1-Insufficiently tuned alerts/notables
Alerts need to be tuned/created such that the ratio of positives to false-positives is extremely low.
Tuning needs to be conducted continuously and vigorously to ensure alerts are as refined and current as possible.

2-Inability to tune alerts/notables due to network design/use limitations
Networks that are inherently insecure or where policies are lax or not enforced will cause even perfectly tuned alerts to have a high false positive rate.
Security operating in isolation will not overcome this shortfall, SecOps working together with enterprise architecture will need to investigate and alleviate the experienced issues. 

Overcomming these causes is extremely difficult to achieve for the majority of enterprises, as such strategies have been developed to sort the wheat from the chaff.  Strategies such as risk based alerting can greatly assist in sorting through the chaff but the addition of an abstraction layer can cause particularly subtle attacks to go unnoticed.  

Alerts often focus on specific signature traits used in the attack to detect the action.  To avoid detection attackers will monitor threat intelligence to determine the discovered signatures and slightly alter these to avoid future detection.  

Detection of attacker techniques by focusing on the characteristics of the technique, where this is not normal behaviour for the device will provide more sensitive alerting that is not susceptible to minor signature changes.

Techniques need to be dissected to determine what noise (above normal operations) will be made and in what log entry these can be found.

Tuning to reduce sensitivity can be achieved by employing a requirement for more than one characteristic alert for an attack technique to be present.  This form of aggregation is very similar to the Splunk UBA threats and Splunk RBA, in that it requires an aggregated alert to be created from basic alerts before notifying the SOC.

