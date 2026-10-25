require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70508 = class("Quest70508", QuestActorProxy)
Quest70508.defaultAlias = "Quest70508"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest70508:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest70508:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7050801"] = self.OnSubStart7050801,
        ["7050806"] = self.OnSubStart7050806,
        ["7050805"] = self.OnSubStart7050805,
        ["7050802"] = self.OnSubStart7050802,
        ["7050803"] = self.OnSubStart7050803,
        ["7050804"] = self.OnSubStart7050804
    }
end

function Quest70508:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7050801"] = self.OnSubFinish7050801,
        ["7050806"] = self.OnSubFinish7050806,
        ["7050805"] = self.OnSubFinish7050805,
        ["7050802"] = self.OnSubFinish7050802,
        ["7050803"] = self.OnSubFinish7050803,
        ["7050804"] = self.OnSubFinish7050804
    }
end

function Quest70508:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7050802"] = self.OnSubFailed7050802, ["7050803"] = self.OnSubFailed7050803}
end

function Quest70508:Start()
    print("Start")
end

function Quest70508:OnDestroy()
    print("OnDestroy")
end

function Quest70508:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70508:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70508:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 1068)
    self:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 1068)
    local actor = actorMgr:GetActor("70508")
    actor:UnSpawn(gadgets.Gadget70710667Data.alias)
    actor:UnSpawn(gadgets.Gadget70710668Data.alias)
    actorMgr:DestroyEntityActor("Q70508Trigger", 1068, false)
end

function Quest70508:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        if self:GetSubQuestState(7050802) ~= 3 then
            self:ActionSafeCall(function(arg1)
                actorUtils.ShowContext("ActivityBartenderMakePage", 7050802)
            end)
        else
            print("error BartenderUI call")
        end
    end
end

function Quest70508:PaimonDis()
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

function Quest70508:OnSubStart7050801(arg1)
    print("OnSubStart7050801")
    actorMgr:CreateActorWithPos("Q70508Trigger", "Actor/Gadget/Q70508Trigger", 70900002, 0, sceneData:GetDummyPoint(1068, "Q7050202_Trans").pos, sceneData:GetDummyPoint(1068, "Q7050202_Trans").rot, true, false, 1068)
end

function Quest70508:OnSubFinish7050801(arg1)
    print("OnSubFinish7050801")
    self:PaimonDis()
end

function Quest70508:OnSubStart7050806(arg1)
    print("OnSubStart7050806")
end

function Quest70508:OnSubFinish7050806(arg1)
    print("OnSubFinish7050806")
end

function Quest70508:OnSubStart7050805(arg1)
    print("OnSubStart7050805")
    self:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10211Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1031Data.alias):SitOnChair(8010)
    self:GetQuestNpcActor(npcs.Npc10211Data.alias):SitOnChair(8010)
end

function Quest70508:OnSubFinish7050805(arg1)
    print("OnSubFinish7050805")
end

function Quest70508:OnSubStart7050802(arg1)
    print("OnSubStart7050802")
end

function Quest70508:OnSubFinish7050802(arg1)
    print("OnSubFinish7050802")
end

function Quest70508:OnSubFailed7050802(arg1)
    print("OnSubFailed7050802")
    self:ShowBlackScreen(1, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70508:OnSubStart7050803(arg1)
    print("OnSubStart7050803")
end

function Quest70508:OnSubFinish7050803(arg1)
    print("OnSubFinish7050803")
end

function Quest70508:OnSubFailed7050803(arg1)
    print("OnSubFailed7050803")
    self:ShowBlackScreen(1, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70508:OnSubStart7050804(arg1)
    print("OnSubStart7050804")
    self:UnSpawn(gadgets.Gadget70710667Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710667Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710668Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710668Data.id, 2, 0)
    self:RequestInteraction(npcs.Npc1031Data.alias)
end

function Quest70508:OnSubFinish7050804(arg1)
    print("OnSubFinish7050804")
    self:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 1068)
    self:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 1068)
    self:UnSpawn(gadgets.Gadget70710667Data.alias)
    self:UnSpawn(gadgets.Gadget70710668Data.alias)
end

return Quest70508
