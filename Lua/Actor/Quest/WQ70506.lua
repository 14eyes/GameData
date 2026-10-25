require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70506 = class("Quest70506", QuestActorProxy)
Quest70506.defaultAlias = "Quest70506"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest70506:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest70506:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7050601"] = self.OnSubStart7050601,
        ["7050606"] = self.OnSubStart7050606,
        ["7050605"] = self.OnSubStart7050605,
        ["7050602"] = self.OnSubStart7050602,
        ["7050603"] = self.OnSubStart7050603,
        ["7050604"] = self.OnSubStart7050604
    }
end

function Quest70506:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7050601"] = self.OnSubFinish7050601,
        ["7050606"] = self.OnSubFinish7050606,
        ["7050605"] = self.OnSubFinish7050605,
        ["7050602"] = self.OnSubFinish7050602,
        ["7050603"] = self.OnSubFinish7050603,
        ["7050604"] = self.OnSubFinish7050604
    }
end

function Quest70506:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7050602"] = self.OnSubFailed7050602, ["7050603"] = self.OnSubFailed7050603}
end

function Quest70506:Start()
    print("Start")
end

function Quest70506:OnDestroy()
    print("OnDestroy")
end

function Quest70506:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70506:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70506:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1006Data.alias, 1068)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 1068)
    local actor = actorMgr:GetActor("70506")
    actor:UnSpawn(gadgets.Gadget70710666Data.alias)
    actor:UnSpawn(gadgets.Gadget70710667Data.alias)
    actorMgr:DestroyEntityActor("Q70506Trigger", 1068, false)
end

function Quest70506:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        if self:GetSubQuestState(7050602) ~= 3 then
            self:ActionSafeCall(function(arg1)
                actorUtils.ShowContext("ActivityBartenderMakePage", 7050602)
            end)
        end
    elseif arg1 == 2 then
        local questNPCActor = actorMgr:GetQuestNPCActor("Npc10232", 70507)
        if questNPCActor ~= nil then
            questNPCActor:EnableHeadCtrl(false)
        else
            print("Zhongli is not here.")
        end
    elseif arg1 == 3 then
        local questNPCActor = actorMgr:GetQuestNPCActor("Npc10232", 70507)
        if questNPCActor ~= nil then
            questNPCActor:EnableHeadCtrl(true)
        else
            print("Zhongli is not here.")
        end
    end
end

function Quest70506:PaimonDis()
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

function Quest70506:OnSubStart7050601(arg1)
    print("OnSubStart7050601")
    actorMgr:CreateActorWithPos("Q70506Trigger", "Actor/Gadget/Q70506Trigger", 70900002, 0, sceneData:GetDummyPoint(1068, "Q7050202_Trans").pos, sceneData:GetDummyPoint(1068, "Q7050202_Trans").rot, true, false, 1068)
end

function Quest70506:OnSubFinish7050601(arg1)
    print("OnSubFinish7050601")
    self:PaimonDis()
end

function Quest70506:OnSubStart7050606(arg1)
    print("OnSubStart7050606")
end

function Quest70506:OnSubFinish7050606(arg1)
    print("OnSubFinish7050606")
    if self:GetQuestVar(7050606, 1) == 0 then
        self:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
            arg1:SetQuestVar(7050606, 1, 1)
        end, nil, "QUEST_Message_Q70503", false, true)
    end
end

function Quest70506:OnSubStart7050605(arg1)
    print("OnSubStart7050605")
    self:CreateQuestNpc(arg1, npcs.Npc1006Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.LisaData.id, 2)
    self:GetQuestNpcActor(npcs.Npc1006Data.alias):SitOnChair(8010)
    self:GetQuestNpcActor(npcs.LisaData.alias):SitOnChair(8010)
end

function Quest70506:OnSubFinish7050605(arg1)
    print("OnSubFinish7050605")
end

function Quest70506:OnSubStart7050602(arg1)
    print("OnSubStart7050602")
end

function Quest70506:OnSubFinish7050602(arg1)
    print("OnSubFinish7050602")
end

function Quest70506:OnSubFailed7050602(arg1)
    print("OnSubFailed7050602")
    self:ShowBlackScreen(1, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70506:OnSubStart7050603(arg1)
    print("OnSubStart7050603")
end

function Quest70506:OnSubFinish7050603(arg1)
    print("OnSubFinish7050603")
end

function Quest70506:OnSubFailed7050603(arg1)
    print("OnSubFailed7050603")
    self:ShowBlackScreen(1, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70506:OnSubStart7050604(arg1)
    print("OnSubStart7050604")
    self:UnSpawn(gadgets.Gadget70710666Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710666Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710667Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710667Data.id, 2, 0)
    self:RequestInteraction(npcs.Npc1006Data.alias)
end

function Quest70506:OnSubFinish7050604(arg1)
    print("OnSubFinish7050604")
    self:SafeDestroyQuestNpc(npcs.Npc1006Data.alias, 1068)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 1068)
    self:UnSpawn(gadgets.Gadget70710666Data.alias)
    self:UnSpawn(gadgets.Gadget70710667Data.alias)
end

return Quest70506
