require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72151 = class("Quest72151", QuestActorProxy)
Quest72151.defaultAlias = "Quest72151"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72151:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72151:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7215101"] = self.OnSubStart7215101,
        ["7215102"] = self.OnSubStart7215102,
        ["7215103"] = self.OnSubStart7215103,
        ["7215104"] = self.OnSubStart7215104,
        ["7215105"] = self.OnSubStart7215105,
        ["7215106"] = self.OnSubStart7215106,
        ["7215108"] = self.OnSubStart7215108,
        ["7215110"] = self.OnSubStart7215110,
        ["7215109"] = self.OnSubStart7215109,
        ["7215107"] = self.OnSubStart7215107
    }
end

function Quest72151:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7215101"] = self.OnSubFinish7215101,
        ["7215102"] = self.OnSubFinish7215102,
        ["7215103"] = self.OnSubFinish7215103,
        ["7215104"] = self.OnSubFinish7215104,
        ["7215105"] = self.OnSubFinish7215105,
        ["7215106"] = self.OnSubFinish7215106,
        ["7215108"] = self.OnSubFinish7215108,
        ["7215110"] = self.OnSubFinish7215110,
        ["7215109"] = self.OnSubFinish7215109,
        ["7215107"] = self.OnSubFinish7215107
    }
end

function Quest72151:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7215101"] = self.OnSubFailed7215101,
        ["7215102"] = self.OnSubFailed7215102,
        ["7215103"] = self.OnSubFailed7215103,
        ["7215104"] = self.OnSubFailed7215104,
        ["7215105"] = self.OnSubFailed7215105,
        ["7215106"] = self.OnSubFailed7215106,
        ["7215108"] = self.OnSubFailed7215108,
        ["7215110"] = self.OnSubFailed7215110,
        ["7215109"] = self.OnSubFailed7215109,
        ["7215107"] = self.OnSubFailed7215107
    }
end

function Quest72151:Start()
    print("Start")
end

function Quest72151:OnDestroy()
    print("OnDestroy")
end

function Quest72151:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72151:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72151:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72151:DestroyNPC()
    print("DestroyNPC")
    self:SafeDestroyQuestNpc(npcs.Npc20310Data.alias, 3)
end

function Quest72151:DestroyNPCAnisa()
    print("DestroyNPCAnisa")
    self:SafeDestroyQuestNpc(npcs.Npc3187Data.alias, 3)
end

function Quest72151:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Finish7215107")
        self:FinishQuestID(false, 7215107)
    end
end

function Quest72151:CreateNPC()
    print("CreateNPC")
    self:CreateQuestNpcById(7215102, npcs.Npc3195Data.id, 1)
end

function Quest72151:OnSubStart7215101(arg1)
    print("OnSubStart7215101")
    self:CreateQuestNpc(arg1, npcs.Npc20310Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20310Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72151:OnSubFinish7215101(arg1)
    print("OnSubFinish7215101")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNPC, nil, nil, "", false, true)
end

function Quest72151:OnSubFailed7215101(arg1)
    print("OnSubFailed7215101")
end

function Quest72151:OnSubStart7215102(arg1)
    print("OnSubStart7215102")
    self:CallDelay(1, self.CreateNPC)
end

function Quest72151:OnSubFinish7215102(arg1)
    print("OnSubFinish7215102")
end

function Quest72151:OnSubFailed7215102(arg1)
    print("OnSubFailed7215102")
end

function Quest72151:OnSubStart7215103(arg1)
    print("OnSubStart7215103")
end

function Quest72151:OnSubFinish7215103(arg1)
    print("OnSubFinish7215103")
end

function Quest72151:OnSubFailed7215103(arg1)
    print("OnSubFailed7215103")
end

function Quest72151:OnSubStart7215104(arg1)
    print("OnSubStart7215104")
    self:CreateQuestNpc(arg1, npcs.Npc3187Data.id, 2)
    self:NotifyTo(npcs.Npc3187Data.alias, 2, true)
    self:GetQuestNpcActor(npcs.Npc3187Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest72151:OnSubFinish7215104(arg1)
    print("OnSubFinish7215104")
end

function Quest72151:OnSubFailed7215104(arg1)
    print("OnSubFailed7215104")
end

function Quest72151:OnSubStart7215105(arg1)
    print("OnSubStart7215105")
    self:CreateQuestNpc(arg1, npcs.Npc3187Data.id, 2)
    self:NotifyTo(npcs.Npc3187Data.alias, 2, true)
    self:GetQuestNpcActor(npcs.Npc3187Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc3195Data.id, 0)
    self:NotifyTo(npcs.Npc3195Data.alias, 0, true)
end

function Quest72151:OnSubFinish7215105(arg1)
    print("OnSubFinish7215105")
end

function Quest72151:OnSubFailed7215105(arg1)
    print("OnSubFailed7215105")
end

function Quest72151:OnSubStart7215106(arg1)
    print("OnSubStart7215106")
    self:CreateQuestNpc(arg1, npcs.Npc3187Data.id, 2)
    self:NotifyTo(npcs.Npc3187Data.alias, 2, true)
    self:GetQuestNpcActor(npcs.Npc3187Data.alias):DoFreeStateTrigger()
    self:CreateQuestNpc(arg1, npcs.Npc3195Data.id, 0)
    self:NotifyTo(npcs.Npc3195Data.alias, 0, true)
end

function Quest72151:OnSubFinish7215106(arg1)
    print("OnSubFinish7215106")
end

function Quest72151:OnSubFailed7215106(arg1)
    print("OnSubFailed7215106")
end

function Quest72151:OnSubStart7215108(arg1)
    print("OnSubStart7215108")
    self:CreateQuestNpc(arg1, npcs.Npc3187Data.id, 2)
    self:NotifyTo(npcs.Npc3187Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc3195Data.id, 0)
    self:NotifyTo(npcs.Npc3195Data.alias, 0, true)
end

function Quest72151:OnSubFinish7215108(arg1)
    print("OnSubFinish7215108")
end

function Quest72151:OnSubFailed7215108(arg1)
    print("OnSubFailed7215108")
end

function Quest72151:OnSubStart7215110(arg1)
    print("OnSubStart7215110")
    self:CreateQuestNpc(arg1, npcs.Npc3187Data.id, 2)
    self:NotifyTo(npcs.Npc3187Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc3195Data.id, 0)
    self:NotifyTo(npcs.Npc3195Data.alias, 0, true)
end

function Quest72151:OnSubFinish7215110(arg1)
    print("OnSubFinish7215110")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNPCAnisa, nil, nil, "", false, true)
end

function Quest72151:OnSubFailed7215110(arg1)
    print("OnSubFailed7215110")
end

function Quest72151:OnSubStart7215109(arg1)
    print("OnSubStart7215109")
    self:CreateQuestNpc(arg1, npcs.Npc3195Data.id, 0)
    self:NotifyTo(npcs.Npc3195Data.alias, 0, true)
end

function Quest72151:OnSubFinish7215109(arg1)
    print("OnSubFinish7215109")
    self:SafeDestroyQuestNpc(npcs.Npc3195Data.alias, 3)
end

function Quest72151:OnSubFailed7215109(arg1)
    print("OnSubFailed7215109")
end

function Quest72151:OnSubStart7215107(arg1)
    print("OnSubStart7215107")
end

function Quest72151:OnSubFinish7215107(arg1)
    print("OnSubFinish7215107")
    self:GetQuestNpcActor(npcs.Npc3187Data.alias):ForceRefreshDaily()
end

function Quest72151:OnSubFailed7215107(arg1)
    print("OnSubFailed7215107")
end

return Quest72151
