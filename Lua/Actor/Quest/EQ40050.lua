require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40050 = class("Quest40050", QuestActorProxy)
Quest40050.defaultAlias = "Quest40050"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest40050:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest40050:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4005005"] = self.OnSubStart4005005,
        ["4005004"] = self.OnSubStart4005004,
        ["4005006"] = self.OnSubStart4005006,
        ["4005007"] = self.OnSubStart4005007,
        ["4005013"] = self.OnSubStart4005013,
        ["4005008"] = self.OnSubStart4005008,
        ["4005009"] = self.OnSubStart4005009,
        ["4005010"] = self.OnSubStart4005010,
        ["4005011"] = self.OnSubStart4005011,
        ["4005012"] = self.OnSubStart4005012,
        ["4005001"] = self.OnSubStart4005001,
        ["4005002"] = self.OnSubStart4005002,
        ["4005003"] = self.OnSubStart4005003,
        ["4005014"] = self.OnSubStart4005014
    }
end

function Quest40050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4005005"] = self.OnSubFinish4005005,
        ["4005004"] = self.OnSubFinish4005004,
        ["4005006"] = self.OnSubFinish4005006,
        ["4005007"] = self.OnSubFinish4005007,
        ["4005013"] = self.OnSubFinish4005013,
        ["4005008"] = self.OnSubFinish4005008,
        ["4005009"] = self.OnSubFinish4005009,
        ["4005010"] = self.OnSubFinish4005010,
        ["4005011"] = self.OnSubFinish4005011,
        ["4005012"] = self.OnSubFinish4005012,
        ["4005001"] = self.OnSubFinish4005001,
        ["4005002"] = self.OnSubFinish4005002,
        ["4005003"] = self.OnSubFinish4005003,
        ["4005014"] = self.OnSubFinish4005014
    }
end

function Quest40050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4005006"] = self.OnSubFailed4005006, ["4005007"] = self.OnSubFailed4005007}
end

function Quest40050:Start()
    print("Start")
end

function Quest40050:OnDestroy()
    print("OnDestroy")
end

function Quest40050:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40050:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40050:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor("Q4005009Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005006Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005007Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005008Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005008TowerTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005013Trigger", 3, false)
end

function Quest40050:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40050:OnSubStart4005005(arg1)
    print("OnSubStart4005005")
end

function Quest40050:OnSubFinish4005005(arg1)
    print("OnSubFinish4005005")
end

function Quest40050:OnSubStart4005004(arg1)
    print("OnSubStart4005004")
end

function Quest40050:OnSubFinish4005004(arg1)
    print("OnSubFinish4005004")
    self:EnterSceneLookCamera({x = -713.078, y = 134.3768, z = -218.0627}, 0, 3, false, true)
    actorMgr:GetActor("40050"):NarratorOnlyTaskByData(datas.NarratorWithId4005002, nil, 40050)
end

function Quest40050:OnSubStart4005006(arg1)
    print("OnSubStart4005006")
    actorMgr:CreateActorWithPos("Q4005006Trigger", "Actor/Gadget/Q4005006Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005006_guide").pos, sceneData:GetDummyPoint(7, "Q4005006_guide").rot, true, false, 7)
end

function Quest40050:OnSubFinish4005006(arg1)
    print("OnSubFinish4005006")
end

function Quest40050:OnSubFailed4005006(arg1)
    print("OnSubFailed4005006")
    self:ActorDestroy("Q4005006Trigger")
end

function Quest40050:OnSubStart4005007(arg1)
    print("OnSubStart4005007")
    actorMgr:CreateActorWithPos("Q4005007Trigger", "Actor/Gadget/Q4005007Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005007_trigger").pos, sceneData:GetDummyPoint(7, "Q4005007_trigger").rot, true, false, 7)
end

function Quest40050:OnSubFinish4005007(arg1)
    print("OnSubFinish4005007")
end

function Quest40050:OnSubFailed4005007(arg1)
    print("OnSubFailed4005007")
    self:ActorDestroy("Q4005007Trigger")
end

function Quest40050:OnSubStart4005013(arg1)
    print("OnSubStart4005013")
    actorMgr:CreateActorWithPos("Q4005013Trigger", "Actor/Gadget/Q4005013Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005007_trigger").pos, sceneData:GetDummyPoint(7, "Q4005007_trigger").rot, true, false, 7)
end

function Quest40050:OnSubFinish4005013(arg1)
    print("OnSubFinish4005013")
end

function Quest40050:OnSubStart4005008(arg1)
    print("OnSubStart4005008")
    actorMgr:CreateActorWithPos("Q4005008Trigger", "Actor/Gadget/Q4005008Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005008_guide").pos, sceneData:GetDummyPoint(7, "Q4005008_guide").rot, true, false, 7)
    actorMgr:CreateActorWithPos("Q4005008TowerTrigger", "Actor/Gadget/Q4005008TowerTrigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005001_operator").pos, sceneData:GetDummyPoint(7, "Q4005001_operator").rot, true, false, 7)
end

function Quest40050:OnSubFinish4005008(arg1)
    print("OnSubFinish4005008")
    self:ActorDestroy("Q4005008Trigger")
    self:ActorDestroy("Q4005008TowerTrigger")
end

function Quest40050:OnSubStart4005009(arg1)
    print("OnSubStart4005009")
    actorMgr:CreateActorWithPos("Q4005009Trigger", "Actor/Gadget/Q4005009Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005001_operator").pos, sceneData:GetDummyPoint(7, "Q4005001_operator").rot, true, false, 7)
end

function Quest40050:OnSubFinish4005009(arg1)
    print("OnSubFinish4005009")
end

function Quest40050:OnSubStart4005010(arg1)
    print("OnSubStart4005010")
end

function Quest40050:OnSubFinish4005010(arg1)
    print("OnSubFinish4005010")
end

function Quest40050:OnSubStart4005011(arg1)
    print("OnSubStart4005011")
end

function Quest40050:OnSubFinish4005011(arg1)
    print("OnSubFinish4005011")
end

function Quest40050:OnSubStart4005012(arg1)
    print("OnSubStart4005012")
end

function Quest40050:OnSubFinish4005012(arg1)
    print("OnSubFinish4005012")
end

function Quest40050:OnSubStart4005001(arg1)
    print("OnSubStart4005001")
end

function Quest40050:OnSubFinish4005001(arg1)
    print("OnSubFinish4005001")
end

function Quest40050:OnSubStart4005002(arg1)
    print("OnSubStart4005002")
end

function Quest40050:OnSubFinish4005002(arg1)
    print("OnSubFinish4005002")
end

function Quest40050:OnSubStart4005003(arg1)
    print("OnSubStart4005003")
end

function Quest40050:OnSubFinish4005003(arg1)
    print("OnSubFinish4005003")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4005003, nil, 40050)
end

function Quest40050:OnSubStart4005014(arg1)
    print("OnSubStart4005014")
end

function Quest40050:OnSubFinish4005014(arg1)
    print("OnSubFinish4005014")
end

return Quest40050
