require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79021 = class("Quest79021", QuestActorProxy)
Quest79021.defaultAlias = "Quest79021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest79021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest79021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7902120"] = self.OnSubStart7902120,
        ["7902121"] = self.OnSubStart7902121,
        ["7902122"] = self.OnSubStart7902122,
        ["7902102"] = self.OnSubStart7902102,
        ["7902103"] = self.OnSubStart7902103,
        ["7902104"] = self.OnSubStart7902104,
        ["7902105"] = self.OnSubStart7902105,
        ["7902106"] = self.OnSubStart7902106,
        ["7902107"] = self.OnSubStart7902107,
        ["7902108"] = self.OnSubStart7902108,
        ["7902109"] = self.OnSubStart7902109,
        ["7902110"] = self.OnSubStart7902110,
        ["7902111"] = self.OnSubStart7902111,
        ["7902112"] = self.OnSubStart7902112,
        ["7902113"] = self.OnSubStart7902113,
        ["7902114"] = self.OnSubStart7902114,
        ["7902123"] = self.OnSubStart7902123,
        ["7902115"] = self.OnSubStart7902115,
        ["7902116"] = self.OnSubStart7902116,
        ["7902124"] = self.OnSubStart7902124,
        ["7902119"] = self.OnSubStart7902119
    }
end

function Quest79021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7902120"] = self.OnSubFinish7902120,
        ["7902121"] = self.OnSubFinish7902121,
        ["7902122"] = self.OnSubFinish7902122,
        ["7902102"] = self.OnSubFinish7902102,
        ["7902103"] = self.OnSubFinish7902103,
        ["7902104"] = self.OnSubFinish7902104,
        ["7902105"] = self.OnSubFinish7902105,
        ["7902106"] = self.OnSubFinish7902106,
        ["7902107"] = self.OnSubFinish7902107,
        ["7902108"] = self.OnSubFinish7902108,
        ["7902109"] = self.OnSubFinish7902109,
        ["7902110"] = self.OnSubFinish7902110,
        ["7902111"] = self.OnSubFinish7902111,
        ["7902112"] = self.OnSubFinish7902112,
        ["7902113"] = self.OnSubFinish7902113,
        ["7902114"] = self.OnSubFinish7902114,
        ["7902123"] = self.OnSubFinish7902123,
        ["7902115"] = self.OnSubFinish7902115,
        ["7902116"] = self.OnSubFinish7902116,
        ["7902124"] = self.OnSubFinish7902124,
        ["7902119"] = self.OnSubFinish7902119
    }
end

function Quest79021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79021:Start()
    print("Start")
end

function Quest79021:OnDestroy()
    print("OnDestroy")
end

function Quest79021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79021:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest79021:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest79021:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        self:UnSpawn(gadgets.Gadget45001001Data.alias)
    end
end

function Quest79021:OnSubStart7902120(arg1)
    print("OnSubStart7902120")
    self:CreateQuestNpc(arg1, npcs.Npc20729Data.id, 0)
end

function Quest79021:OnSubFinish7902120(arg1)
    print("OnSubFinish7902120")
    self:NpcDestroyWithDither(npcs.Npc20729Data.alias, 9)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79021:OnSubStart7902121(arg1)
    print("OnSubStart7902121")
end

function Quest79021:OnSubFinish7902121(arg1)
    print("OnSubFinish7902121")
end

function Quest79021:OnSubStart7902122(arg1)
    print("OnSubStart7902122")
    self:CreateQuestNpcWithTrigger("7902122", 7902122, npcs.PaimonData.id, 0, 30)
end

function Quest79021:OnSubFinish7902122(arg1)
    print("OnSubFinish7902122")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79021:OnSubStart7902102(arg1)
    print("OnSubStart7902102")
    self:CreateQuestNpcWithTrigger("7902102", 7902102, npcs.Npc20729Data.id, 0, 10)
end

function Quest79021:OnSubFinish7902102(arg1)
    print("OnSubFinish7902102")
    self:NpcDestroyWithDither(npcs.Npc20729Data.alias, 9)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79021:OnSubStart7902103(arg1)
    print("OnSubStart7902103")
end

function Quest79021:OnSubFinish7902103(arg1)
    print("OnSubFinish7902103")
end

function Quest79021:OnSubStart7902104(arg1)
    print("OnSubStart7902104")
end

function Quest79021:OnSubFinish7902104(arg1)
    print("OnSubFinish7902104")
end

function Quest79021:OnSubStart7902105(arg1)
    print("OnSubStart7902105")
    self:CreateQuestNpcWithTrigger("7902105", 7902105, npcs.PaimonData.id, 0, 30)
end

function Quest79021:OnSubFinish7902105(arg1)
    print("OnSubFinish7902105")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79021:OnSubStart7902106(arg1)
    print("OnSubStart7902106")
    self:CreateQuestNpc(arg1, npcs.Npc20737Data.id, 0)
end

function Quest79021:OnSubFinish7902106(arg1)
    print("OnSubFinish7902106")
    self:NpcDestroy(npcs.Npc20737Data.alias, 9)
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator7902106)
    end)
end

function Quest79021:OnSubStart7902107(arg1)
    print("OnSubStart7902107")
end

function Quest79021:OnSubFinish7902107(arg1)
    print("OnSubFinish7902107")
end

function Quest79021:OnSubStart7902108(arg1)
    print("OnSubStart7902108")
    self:CreateQuestNpcWithTrigger("7902108", 7902108, npcs.Npc20729Data.id, 0, 20)
end

function Quest79021:OnSubFinish7902108(arg1)
    print("OnSubFinish7902108")
    self:NpcDestroy(npcs.Npc20729Data.alias, 9)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79021:OnSubStart7902109(arg1)
    print("OnSubStart7902109")
end

function Quest79021:OnSubFinish7902109(arg1)
    print("OnSubFinish7902109")
end

function Quest79021:OnSubStart7902110(arg1)
    print("OnSubStart7902110")
end

function Quest79021:OnSubFinish7902110(arg1)
    print("OnSubFinish7902110")
end

function Quest79021:OnSubStart7902111(arg1)
    print("OnSubStart7902111")
    self:CreateQuestNpcWithTrigger("7902111", 7902111, npcs.Npc20729Data.id, 0, 10)
end

function Quest79021:OnSubFinish7902111(arg1)
    print("OnSubFinish7902111")
    self:NpcDestroyWithDither(npcs.Npc20729Data.alias, 9)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79021:OnSubStart7902112(arg1)
    print("OnSubStart7902112")
end

function Quest79021:OnSubFinish7902112(arg1)
    print("OnSubFinish7902112")
end

function Quest79021:OnSubStart7902113(arg1)
    print("OnSubStart7902113")
end

function Quest79021:OnSubFinish7902113(arg1)
    print("OnSubFinish7902113")
end

function Quest79021:OnSubStart7902114(arg1)
    print("OnSubStart7902114")
    self:CreateQuestNpcWithTrigger("7902114", 7902114, npcs.Npc20729Data.id, 0, 10)
end

function Quest79021:OnSubFinish7902114(arg1)
    print("OnSubFinish7902114")
    self:NpcDestroyWithDither(npcs.Npc20729Data.alias, 9)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79021:OnSubStart7902123(arg1)
    print("OnSubStart7902123")
    self:CreateQuestNpcWithTrigger("7902123", 7902123, npcs.Npc20729Data.id, 0, 10)
end

function Quest79021:OnSubFinish7902123(arg1)
    print("OnSubFinish7902123")
    self:NpcDestroyWithDither(npcs.Npc20729Data.alias, 9)
end

function Quest79021:OnSubStart7902115(arg1)
    print("OnSubStart7902115")
end

function Quest79021:OnSubFinish7902115(arg1)
    print("OnSubFinish7902115")
end

function Quest79021:OnSubStart7902116(arg1)
    print("OnSubStart7902116")
end

function Quest79021:OnSubFinish7902116(arg1)
    print("OnSubFinish7902116")
end

function Quest79021:OnSubStart7902124(arg1)
    print("OnSubStart7902124")
    self:CreateQuestNpcWithTrigger("7902124", 7902124, npcs.PaimonData.id, 0, 30)
end

function Quest79021:OnSubFinish7902124(arg1)
    print("OnSubFinish7902124")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79021:OnSubStart7902119(arg1)
    print("OnSubStart7902119")
    self:CreateQuestNpc(arg1, npcs.Npc20729Data.id, 0)
end

function Quest79021:OnSubFinish7902119(arg1)
    print("OnSubFinish7902119")
    self:NpcDestroyWithDither(npcs.Npc20729Data.alias, 9)
end

return Quest79021
