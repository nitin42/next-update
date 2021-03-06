gt.module 'report'

report = require '../report'

gt.test 'reportSuccess', ->
    rs = report.reportSuccess
    gt.arity rs, 2
    rs 'sample values'

gt.test 'reportFailure', ->
    rf = report.reportFailure
    gt.arity rf, 2
    rf 'sample values'

gt.test 'report basics', ->
    r = report.report
    gt.ok r.length > 0
    data = []
    r data

info = [
    [{name: 'a', version: '1.0', from: '0.0.0'}],
    [{name: 'a', version: '1.1', from: '0.0.0', works: true}],
    [{name: 'b', version: '1.0', from: '0.0.0', works: false}]
]

gt.test 'report modules, default colors', 0, ->
    report.report info

gt.test 'report modules, no colors', 0, ->
    report.report info, false

gt.test 'report modules, with colors', 0, ->
    report.report info, true
