require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74110 = class("Quest74110", QuestActorProxy)
Quest74110.defaultAlias = "Quest74110"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74110:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74110:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7411001"] = self.OnSubStart7411001,
        ["7411004"] = self.OnSubStart7411004,
        ["7411015"] = self.OnSubStart7411015,
        ["7411006"] = self.OnSubStart7411006,
        ["7411009"] = self.OnSubStart7411009,
        ["7411010"] = self.OnSubStart7411010,
        ["7411011"] = self.OnSubStart7411011,
        ["7411012"] = self.OnSubStart7411012,
        ["7411013"] = self.OnSubStart7411013,
        ["7411014"] = self.OnSubStart7411014,
        ["7411002"] = self.OnSubStart7411002,
        ["7411003"] = self.OnSubStart7411003,
        ["7411007"] = self.OnSubStart7411007,
        ["7411008"] = self.OnSubStart7411008
    }
end

function Quest74110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7411001"] = self.OnSubFinish7411001,
        ["7411004"] = self.OnSubFinish7411004,
        ["7411015"] = self.OnSubFinish7411015,
        ["7411006"] = self.OnSubFinish7411006,
        ["7411009"] = self.OnSubFinish7411009,
        ["7411010"] = self.OnSubFinish7411010,
        ["7411011"] = self.OnSubFinish7411011,
        ["7411012"] = self.OnSubFinish7411012,
        ["7411013"] = self.OnSubFinish7411013,
        ["7411014"] = self.OnSubFinish7411014,
        ["7411002"] = self.OnSubFinish7411002,
        ["7411003"] = self.OnSubFinish7411003,
        ["7411007"] = self.OnSubFinish7411007,
        ["7411008"] = self.OnSubFinish7411008
    }
end

function Quest74110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74110:Start()
    print("Start")
end

function Quest74110:OnDestroy()
    print("OnDestroy")
end

function Quest74110:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74110:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74110:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74110:OnSubStart7411001(arg1)
    print("OnSubStart7411001")
    actorMgr:CreateActorWithPos("Q7411001Trigger", "Actor/Gadget/Q7411001Trigger", 70900002, 0, {x = 4245.348, y = 160.177, z = 4417.742}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74110:OnSubFinish7411001(arg1)
    print("OnSubFinish7411001")
end

function Quest74110:OnSubStart7411004(arg1)
    print("OnSubStart7411004")
end

function Quest74110:OnSubFinish7411004(arg1)
    print("OnSubFinish7411004")
end

function Quest74110:OnSubStart7411015(arg1)
    print("OnSubStart7411015")
    actorUtils.FinishQuestID(false, 7411015)
end

function Quest74110:OnSubFinish7411015(arg1)
    print("OnSubFinish7411015")
end

function Quest74110:OnSubStart7411006(arg1)
    print("OnSubStart7411006")
end

function Quest74110:OnSubFinish7411006(arg1)
    print("OnSubFinish7411006")
end

function Quest74110:OnSubStart7411009(arg1)
    print("OnSubStart7411009")
end

function Quest74110:OnSubFinish7411009(arg1)
    print("OnSubFinish7411009")
end

function Quest74110:OnSubStart7411010(arg1)
    print("OnSubStart7411010")
end

function Quest74110:OnSubFinish7411010(arg1)
    print("OnSubFinish7411010")
end

function Quest74110:OnSubStart7411011(arg1)
    print("OnSubStart7411011")
end

function Quest74110:OnSubFinish7411011(arg1)
    print("OnSubFinish7411011")
end

function Quest74110:OnSubStart7411012(arg1)
    print("OnSubStart7411012")
end

function Quest74110:OnSubFinish7411012(arg1)
    print("OnSubFinish7411012")
end

function Quest74110:OnSubStart7411013(arg1)
    print("OnSubStart7411013")
end

function Quest74110:OnSubFinish7411013(arg1)
    print("OnSubFinish7411013")
end

function Quest74110:OnSubStart7411014(arg1)
    print("OnSubStart7411014")
    this:PlayCutsceneIndex(7411014, function(arg1)
        actorUtils.FinishQuestID(false, 7411014)
    end, nil, nil, false)
end

function Quest74110:OnSubFinish7411014(arg1)
    print("OnSubFinish7411014")
end

function Quest74110:OnSubStart7411002(arg1)
    print("OnSubStart7411002")
end

function Quest74110:OnSubFinish7411002(arg1)
    print("OnSubFinish7411002")
end

function Quest74110:OnSubStart7411003(arg1)
    print("OnSubStart7411003")
end

function Quest74110:OnSubFinish7411003(arg1)
    print("OnSubFinish7411003")
end

function Quest74110:OnSubStart7411007(arg1)
    print("OnSubStart7411007")
end

function Quest74110:OnSubFinish7411007(arg1)
    print("OnSubFinish7411007")
end

function Quest74110:OnSubStart7411008(arg1)
    print("OnSubStart7411008")
end

function Quest74110:OnSubFinish7411008(arg1)
    print("OnSubFinish7411008")
end

return Quest74110
