require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70505 = class("Quest70505", QuestActorProxy)
Quest70505.defaultAlias = "Quest70505"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest70505:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest70505:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7050501"] = self.OnSubStart7050501,
        ["7050505"] = self.OnSubStart7050505,
        ["7050504"] = self.OnSubStart7050504,
        ["7050502"] = self.OnSubStart7050502,
        ["7050503"] = self.OnSubStart7050503
    }
end

function Quest70505:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7050501"] = self.OnSubFinish7050501,
        ["7050505"] = self.OnSubFinish7050505,
        ["7050504"] = self.OnSubFinish7050504,
        ["7050502"] = self.OnSubFinish7050502,
        ["7050503"] = self.OnSubFinish7050503
    }
end

function Quest70505:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7050502"] = self.OnSubFailed7050502}
end

function Quest70505:Start()
    print("Start")
end

function Quest70505:OnDestroy()
    print("OnDestroy")
end

function Quest70505:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70505:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70505:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1009Data.alias, 1068)
    actorMgr:GetActor("70505"):UnSpawn(gadgets.Gadget70710668Data.alias)
    actorMgr:DestroyEntityActor("Q70505Trigger", 1068, false)
end

function Quest70505:PaimonDis()
    print("PaimonDis")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest70505:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        if self:GetSubQuestState(7050502) ~= 3 then
            self:ActionSafeCall(function(arg1)
                actorUtils.ShowContext("ActivityBartenderMakePage", 7050502)
            end)
        else
            print("error BartenderUI call")
        end
    end
end

function Quest70505:OnSubStart7050501(arg1)
    print("OnSubStart7050501")
    actorMgr:CreateActorWithPos("Q70505Trigger", "Actor/Gadget/Q70505Trigger", 70900002, 0, sceneData:GetDummyPoint(1068, "Q7050202_Trans").pos, sceneData:GetDummyPoint(1068, "Q7050202_Trans").rot, true, false, 1068)
end

function Quest70505:OnSubFinish7050501(arg1)
    print("OnSubFinish7050501")
    self:PaimonDis()
end

function Quest70505:OnSubStart7050505(arg1)
    print("OnSubStart7050505")
end

function Quest70505:OnSubFinish7050505(arg1)
    print("OnSubFinish7050505")
end

function Quest70505:OnSubStart7050504(arg1)
    print("OnSubStart7050504")
    self:CreateQuestNpc(arg1, npcs.Npc1009Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1009Data.alias):SitOnChair(8010)
end

function Quest70505:OnSubFinish7050504(arg1)
    print("OnSubFinish7050504")
end

function Quest70505:OnSubStart7050502(arg1)
    print("OnSubStart7050502")
end

function Quest70505:OnSubFinish7050502(arg1)
    print("OnSubFinish7050502")
end

function Quest70505:OnSubFailed7050502(arg1)
    print("OnSubFailed7050502")
    self:ShowBlackScreen(1, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70505:OnSubStart7050503(arg1)
    print("OnSubStart7050503")
    self:UnSpawn(gadgets.Gadget70710668Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710668Data.id, 1, 0)
    self:RequestInteraction(npcs.Npc1009Data.alias)
end

function Quest70505:OnSubFinish7050503(arg1)
    print("OnSubFinish7050503")
    self:SafeDestroyQuestNpc(npcs.Npc1009Data.alias, 1068)
    self:UnSpawn(gadgets.Gadget70710668Data.alias)
end

return Quest70505
