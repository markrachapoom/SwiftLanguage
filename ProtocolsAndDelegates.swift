protocol advanceLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    
    var delegate: advanceLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: advanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compression, 30 per second.")
    }
}

class Doctor: advanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("Doctor does chest compression, 30 per second.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds...")
    }
}

class Surgeon: Doctor {
    
    override func performCPR() {
        super.performCPR()
        print("Sing staying alive by BeeGees")
    }
    
    func useElectricDrill() {
        print("Whirrrr....")
    }
}

let emilio = EmergencyCallHandler()
let mark = Paramedic(handler: emilio)
let nan = Doctor(handler: emilio)
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()

mark.performCPR()
nan.useStethescope()
angela.useElectricDrill()
