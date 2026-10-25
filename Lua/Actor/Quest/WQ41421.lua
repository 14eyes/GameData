require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41421 = class("Quest41421", QuestActorProxy)
Quest41421.defaultAlias = "Quest41421"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41421:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41421:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4142101"] = self.OnSubStart4142101,
        ["4142102"] = self.OnSubStart4142102,
        ["4142103"] = self.OnSubStart4142103,
        ["4142104"] = self.OnSubStart4142104,
        ["4142105"] = self.OnSubStart4142105,
        ["4142106"] = self.OnSubStart4142106,
        ["4142107"] = self.OnSubStart4142107,
        ["4142108"] = self.OnSubStart4142108,
        ["4142109"] = self.OnSubStart4142109,
        ["4142110"] = self.OnSubStart4142110,
        ["4142111"] = self.OnSubStart4142111
    }
end

function Quest41421:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4142101"] = self.OnSubFinish4142101,
        ["4142102"] = self.OnSubFinish4142102,
        ["4142103"] = self.OnSubFinish4142103,
        ["4142104"] = self.OnSubFinish4142104,
        ["4142105"] = self.OnSubFinish4142105,
        ["4142106"] = self.OnSubFinish4142106,
        ["4142107"] = self.OnSubFinish4142107,
        ["4142108"] = self.OnSubFinish4142108,
        ["4142109"] = self.OnSubFinish4142109,
        ["4142110"] = self.OnSubFinish4142110,
        ["4142111"] = self.OnSubFinish4142111
    }
end

function Quest41421:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4142101"] = self.OnSubFailed4142101,
        ["4142102"] = self.OnSubFailed4142102,
        ["4142103"] = self.OnSubFailed4142103,
        ["4142104"] = self.OnSubFailed4142104,
        ["4142105"] = self.OnSubFailed4142105,
        ["4142106"] = self.OnSubFailed4142106,
        ["4142107"] = self.OnSubFailed4142107,
        ["4142108"] = self.OnSubFailed4142108,
        ["4142109"] = self.OnSubFailed4142109,
        ["4142110"] = self.OnSubFailed4142110,
        ["4142111"] = self.OnSubFailed4142111
    }
end

function Quest41421:Start()
    print("Start")
end

function Quest41421:OnDestroy()
    print("OnDestroy")
end

function Quest41421:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41421:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest41421:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest41421:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Destroy2222222222222222")
        self:UnSpawn(gadgets.Gadget70710311Data.alias)
    elseif arg1 == 4142105 then
        print("414210511111")
        self:UnSpawn(gadgets.Gadget70710311Data.alias)
        self:SpawnGadgetById(4142105, 70710311)
    elseif arg1 == 4142106 then
        print("4142106")
        self:UnSpawn(gadgets.Gadget70710311Data.alias)
        self:SpawnGadgetById(4142106, 70710311, 1)
    elseif arg1 == 4142107 then
        print("4142107")
        self:UnSpawn(gadgets.Gadget70710311Data.alias)
        self:SpawnGadgetById(4142107, 70710311, 1)
    elseif arg1 == 4142108 then
        print("4142108")
        self:UnSpawn(gadgets.Gadget70710311Data.alias)
        self:SpawnGadgetById(4142108, 70710311, 1)
    elseif arg1 == 4142110 then
        print("4142110")
        self:UnSpawn(gadgets.Gadget70710311Data.alias)
        self:SpawnGadgetById(4142110, 70710311, 1)
    end
end

function Quest41421:ClearData()
    print("ClearData")
    self:NotifyTo(npcs.Npc1529Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1543Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1650Data.alias, 0, true)
    self:UnSpawn(gadgets.Gadget70710311Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc10367Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc165001Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q41421Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q41421Trigger_qingquanzhen_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q41421Trigger_Laofenqi_.alias, 3, false)
end

function Quest41421:OnSubStart4142101(arg1)
    print("OnSubStart4142101")
end

function Quest41421:OnSubFinish4142101(arg1)
    print("OnSubFinish4142101")
end

function Quest41421:OnSubFailed4142101(arg1)
    print("OnSubFailed4142101")
end

function Quest41421:OnSubStart4142102(arg1)
    print("OnSubStart4142102")
    self:CreateQuestNpc(arg1, npcs.Npc152901Data.id, 1)
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
end

function Quest41421:OnSubFinish4142102(arg1)
    print("OnSubFinish4142102")
end

function Quest41421:OnSubFailed4142102(arg1)
    print("OnSubFailed4142102")
end

function Quest41421:OnSubStart4142103(arg1)
    print("OnSubStart4142103")
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q41421Trigger_.alias, datas.Q41421Trigger_.script, datas.Q41421Trigger_.id, 0, datas.Q41421Trigger_.point.pos, datas.Q41421Trigger_.point.rot, true, false, 3)
end

function Quest41421:OnSubFinish4142103(arg1)
    print("OnSubFinish4142103")
    self:SafeDestroyQuestNpc(npcs.Npc152901Data.alias, 3)
    self:NotifyTo(npcs.Npc1529Data.alias, 0, true)
end

function Quest41421:OnSubFailed4142103(arg1)
    print("OnSubFailed4142103")
end

function Quest41421:OnSubStart4142104(arg1)
    print("OnSubStart4142104")
    self:NarratorOnlyTask(datas.NarratorTable_4142104, nil, "Tag")
end

function Quest41421:OnSubFinish4142104(arg1)
    print("OnSubFinish4142104")
end

function Quest41421:OnSubFailed4142104(arg1)
    print("OnSubFailed4142104")
end

function Quest41421:OnSubStart4142105(arg1)
    self.CallDelay(self, 2, function()
        print("OnSubStart4142105")
        self:CreateQuestNpc(arg1, npcs.Npc10367Data.id, 1)
        self:RequestInteraction(npcs.Npc10367Data.alias)
    end)
end

function Quest41421:OnSubFinish4142105(arg1)
    print("OnSubFinish4142105")
end

function Quest41421:OnSubFailed4142105(arg1)
    print("OnSubFailed4142105")
end

function Quest41421:OnSubStart4142106(arg1)
    print("OnSubStart4142106")
    self:CreateQuestNpc(arg1, npcs.Npc10367Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q41421Trigger_qingquanzhen_.alias, datas.Q41421Trigger_qingquanzhen_.script, datas.Q41421Trigger_qingquanzhen_.id, 0, datas.Q41421Trigger_qingquanzhen_.point.pos, datas.Q41421Trigger_qingquanzhen_.point.rot, true, false, 3)
    self:NotifyTo(npcs.Npc1543Data.alias, 1, true)
end

function Quest41421:OnSubFinish4142106(arg1)
    print("OnSubFinish4142106")
    self:SafeDestroyQuestNpc(npcs.Npc10367Data.alias, 3)
end

function Quest41421:OnSubFailed4142106(arg1)
    print("OnSubFailed4142106")
end

function Quest41421:OnSubStart4142107(arg1)
    print("OnSubStart4142107")
    self:CreateQuestNpc(arg1, npcs.Npc165001Data.id, 1)
    self:NotifyTo(npcs.Npc1650Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1543Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q41421Trigger_Laofenqi_.alias, datas.Q41421Trigger_Laofenqi_.script, datas.Q41421Trigger_Laofenqi_.id, 0, datas.Q41421Trigger_Laofenqi_.point.pos, datas.Q41421Trigger_Laofenqi_.point.rot, true, false, 3)
end

function Quest41421:OnSubFinish4142107(arg1)
    print("OnSubFinish4142107")
    actorMgr:DestroyEntityActor(datas.Q41421Trigger_Laofenqi_.alias, 3, false)
end

function Quest41421:OnSubFailed4142107(arg1)
    print("OnSubFailed4142107")
end

function Quest41421:OnSubStart4142108(arg1)
    print("OnSubStart4142108")
    self:CreateQuestNpc(arg1, npcs.Npc10367Data.id, 1)
    self:NotifyTo(npcs.Npc1650Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1543Data.alias, 1, true)
end

function Quest41421:OnSubFinish4142108(arg1)
    print("OnSubFinish4142108")
    self:ActionSafeCall(function()
        actorUtils.ShowActivityPage(5020)
    end)
end

function Quest41421:OnSubFailed4142108(arg1)
    print("OnSubFailed4142108")
end

function Quest41421:OnSubStart4142109(arg1)
    print("OnSubStart4142109")
    self:NotifyTo(npcs.Npc1650Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1543Data.alias, 1, true)
end

function Quest41421:OnSubFinish4142109(arg1)
    print("OnSubFinish4142109")
    self:SafeDestroyQuestNpc(npcs.Npc165001Data.alias, 3)
    self:NotifyTo(npcs.Npc1543Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1650Data.alias, 0, true)
end

function Quest41421:OnSubFailed4142109(arg1)
    print("OnSubFailed4142109")
end

function Quest41421:OnSubStart4142110(arg1)
    print("OnSubStart4142110")
    self:CreateQuestNpc(arg1, npcs.Npc10367Data.id, 1)
end

function Quest41421:OnSubFinish4142110(arg1)
    print("OnSubFinish4142110")
    self.ActionSafeCall(self, function()
        self:SafeDestroyQuestNpc(npcs.Npc10367Data.alias, 3)
        actorUtils.ShowActivityPage(5020)
    end)
end

function Quest41421:OnSubFailed4142110(arg1)
    print("OnSubFailed4142110")
end

function Quest41421:OnSubStart4142111(arg1)
    print("OnSubStart4142111")
    self:FinishQuestID(false, 4142111)
    self:FinishQuestID(false, 4142109)
end

function Quest41421:OnSubFinish4142111(arg1)
    print("OnSubFinish4142111")
end

function Quest41421:OnSubFailed4142111(arg1)
    print("OnSubFailed4142111")
end

return Quest41421
