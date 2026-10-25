require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72275 = class("Quest72275", QuestActorProxy)
Quest72275.defaultAlias = "Quest72275"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72275:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72275:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7227501"] = self.OnSubStart7227501,
        ["7227507"] = self.OnSubStart7227507,
        ["7227508"] = self.OnSubStart7227508,
        ["7227502"] = self.OnSubStart7227502,
        ["7227503"] = self.OnSubStart7227503,
        ["7227504"] = self.OnSubStart7227504,
        ["7227505"] = self.OnSubStart7227505,
        ["7227506"] = self.OnSubStart7227506
    }
end

function Quest72275:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7227501"] = self.OnSubFinish7227501,
        ["7227507"] = self.OnSubFinish7227507,
        ["7227508"] = self.OnSubFinish7227508,
        ["7227502"] = self.OnSubFinish7227502,
        ["7227503"] = self.OnSubFinish7227503,
        ["7227504"] = self.OnSubFinish7227504,
        ["7227505"] = self.OnSubFinish7227505,
        ["7227506"] = self.OnSubFinish7227506
    }
end

function Quest72275:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72275:Start()
    print("Start")
end

function Quest72275:OnDestroy()
    print("OnDestroy")
end

function Quest72275:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72275:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72275:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72275:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72275:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72275:OnSubStart7227501(arg1)
    print("OnSubStart7227501")
    self:NpcCreate(arg1, npcs.NPC20341Data.id, 1)
end

function Quest72275:OnSubFinish7227501(arg1)
    print("OnSubFinish7227501")
end

function Quest72275:OnSubStart7227507(arg1)
    print("OnSubStart7227507")
    self:CallDelay(22, function(arg1)
        arg1:FinishQuestID(false, 7227507)
    end)

    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217704", nil, nil, nil, false)
    end)
end

function Quest72275:OnSubFinish7227507(arg1)
    print("OnSubFinish7227507")
end

function Quest72275:OnSubStart7227508(arg1)
    print("OnSubStart7227508")
    actorMgr:CreateActorWithPos("Q7227508Trigger", "Actor/Gadget/Q7227508Trigger", 70900002, 0, sceneData:GetDummyPoint(5, "Q7227501_N20341").pos, sceneData:GetDummyPoint(5, "Q7227501_N20341").rot, true, false, 5)
end

function Quest72275:OnSubFinish7227508(arg1)
    print("OnSubFinish7227508")
end

function Quest72275:OnSubStart7227502(arg1)
    print("OnSubStart7227502")
end

function Quest72275:OnSubFinish7227502(arg1)
    print("OnSubFinish7227502")
end

function Quest72275:OnSubStart7227503(arg1)
    print("OnSubStart7227503")
end

function Quest72275:OnSubFinish7227503(arg1)
    print("OnSubFinish7227503")
end

function Quest72275:OnSubStart7227504(arg1)
    print("OnSubStart7227504")
end

function Quest72275:OnSubFinish7227504(arg1)
    print("OnSubFinish7227504")
end

function Quest72275:OnSubStart7227505(arg1)
    print("OnSubStart7227505")
end

function Quest72275:OnSubFinish7227505(arg1)
    print("OnSubFinish7227505")
end

function Quest72275:OnSubStart7227506(arg1)
    print("OnSubStart7227506")
end

function Quest72275:OnSubFinish7227506(arg1)
    print("OnSubFinish7227506")
    self:NpcDestroyWithBlackscreen(5, npcs.NPC20341Data.alias)
end

return Quest72275
