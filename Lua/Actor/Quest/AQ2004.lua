require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2004 = class("Quest2004", QuestActorProxy)
Quest2004.defaultAlias = "Quest2004"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas
local pos
local n

function Quest2004:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest2004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["200401"] = self.OnSubStart200401,
        ["200406"] = self.OnSubStart200406,
        ["200407"] = self.OnSubStart200407,
        ["200408"] = self.OnSubStart200408,
        ["200402"] = self.OnSubStart200402,
        ["200403"] = self.OnSubStart200403,
        ["200404"] = self.OnSubStart200404,
        ["200405"] = self.OnSubStart200405
    }
end

function Quest2004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["200401"] = self.OnSubFinish200401,
        ["200406"] = self.OnSubFinish200406,
        ["200407"] = self.OnSubFinish200407,
        ["200408"] = self.OnSubFinish200408,
        ["200402"] = self.OnSubFinish200402,
        ["200403"] = self.OnSubFinish200403,
        ["200404"] = self.OnSubFinish200404,
        ["200405"] = self.OnSubFinish200405
    }
end

function Quest2004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["200401"] = self.OnSubFailed200401,
        ["200406"] = self.OnSubFailed200406,
        ["200407"] = self.OnSubFailed200407,
        ["200408"] = self.OnSubFailed200408,
        ["200402"] = self.OnSubFailed200402,
        ["200403"] = self.OnSubFailed200403,
        ["200404"] = self.OnSubFailed200404,
        ["200405"] = self.OnSubFailed200405
    }
end

function Quest2004:Start()
    print("Start")
end

function Quest2004:OnDestroy()
    print("OnDestroy")
end

function Quest2004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2004:OpenCompass()
    Quest2004:CallOnElemViewOpen(function()
        if pos ~= nil then
            local avatarPos = actorUtils.GetAvatarPos()
            local tbl = {x = pos.x - avatarPos.x, y = 0, z = pos.z - avatarPos.z}
            local avatarForward = actorUtils.GetAvatarForward()
            local n = 2
            local v = actorUtils.GetAvatarPos()
            v.x = v.x + avatarForward.x * n
            v.y = v.y + 0.4
            v.z = v.z + avatarForward.z * n
            actorMgr:GetActor(clientData.ActorAlias):SpawnGadgetByIdWithPos(200404, 70700006, 1, v, M.Dir2Euler(tbl))
            Quest2004:CloseCompass()
        end
    end)
end

function Quest2004:CloseCompass()
    print("CloseCompass")
    Quest2004:CallOnElemViewClose(function()
        print("delete compass")
        globalActor:UnSpawn("Gadget70700006")
        Quest2004:OpenCompass()
    end)
end

function Quest2004:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Invoke 11")
        self:UnSpawn(gadgets.Gadget70220008Data.alias)
    end

    if arg1 == 2 then
        print("Invoke 1")
        self:DelaySpawnGadget(quest, gadgets.Gadget70710433Data.id, 5, 0)
    end

    if arg1 == 3 then
        print("Invoke 1")
        self:UnSpawn(gadgets.Gadget70710433Data.alias)
        self:UnSpawn(gadgets.Gadget70220008Data.alias)
        self:UnSpawn(gadgets.Gadget70220008Data1.alias)
        self:UnSpawn(gadgets.Gadget70220008Data2.alias)
        self:SpawnGadgetById(200404, 70710434)
    end

    if arg1 == 4 then
        print("Invoke 1")
        self:ShowReadingDialog(100891)
    end

    if arg1 == 5 then
        print("Invoke 5")
        self:UnSpawn(gadgets.Gadget70360089Data.alias)
    end
end

function Quest2004:OnSubStart200401(arg1)
    print("OnSubStart200401")
    self:CreateQuestNpc(arg1, npcs.Npc3129Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12040Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12041Data.id, 3)
    actorMgr:CreateActorWithPos(datas.Q200401Trigger_.alias, datas.Q200401Trigger_.script, datas.Q200401Trigger_.id, 0, datas.Q200401Trigger_.point.pos, datas.Q200401Trigger_.point.rot, true, false, 3)
end

function Quest2004:OnSubFinish200401(arg1)
    print("OnSubFinish200401")
end

function Quest2004:OnSubFailed200401(arg1)
    print("OnSubFailed200401")
end

function Quest2004:OnSubStart200406(arg1)
    print("OnSubStart200406")
end

function Quest2004:OnSubFinish200406(arg1)
    print("OnSubFinish200406")
end

function Quest2004:OnSubFailed200406(arg1)
    print("OnSubFailed200406")
end

function Quest2004:OnSubStart200407(arg1)
    print("OnSubStart200407")
end

function Quest2004:OnSubFinish200407(arg1)
    print("OnSubFinish200407")
end

function Quest2004:OnSubFailed200407(arg1)
    print("OnSubFailed200407")
end

function Quest2004:OnSubStart200408(arg1)
    print("OnSubStart200408")
    self:CreateQuestNpc(arg1, npcs.Npc3129Data.id, 1)
end

function Quest2004:OnSubFinish200408(arg1)
    print("OnSubFinish200408")
    self:SafeDestroyQuestNpc(npcs.Npc12040Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12041Data.alias, 3)
end

function Quest2004:OnSubFailed200408(arg1)
    print("OnSubFailed200408")
end

function Quest2004:OnSubStart200402(arg1)
    print("OnSubStart200402")
    self:CreateQuestNpc(arg1, npcs.Npc12018Data.id, 1)
    self:UnSpawn(gadgets.Gadget70710136Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710136Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70360089Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70360089Data.id, 2, 0)
end

function Quest2004:OnSubFinish200402(arg1)
    print("OnSubFinish200402")
    self:SafeDestroyQuestNpc(npcs.Npc12018Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710136Data.alias)
    self:UnSpawn(gadgets.Gadget70360089Data.alias)
end

function Quest2004:OnSubFailed200402(arg1)
    print("OnSubFailed200402")
end

function Quest2004:OnSubStart200403(arg1)
    print("OnSubStart200403")
    self:CreateQuestNpc(arg1, npcs.Npc12019Data.id, 1)
    self:UnSpawn(gadgets.Gadget70710465Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710465Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70360089Data1.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70360089Data1.id, 2, 0)
end

function Quest2004:OnSubFinish200403(arg1)
    print("OnSubFinish200403")
    self:SafeDestroyQuestNpc(npcs.Npc12019Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710465Data.alias)
    self:UnSpawn(gadgets.Gadget70360089Data1.alias)
end

function Quest2004:OnSubFailed200403(arg1)
    print("OnSubFailed200403")
end

function Quest2004:OnSubStart200404(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc12020Data.id, 1)
    self:UnSpawn("Gadget70710434")
    self:UnSpawn("Gadget70710433")
    self:DelaySpawnGadget(arg1, gadgets.Gadget70220008Data.id, 2, 0)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70220008Data.id, 3, 0)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70220008Data.id, 4, 0)
    pos = sceneData:GetDummyPoint(3, "Q200402task3").pos
    n = 200404
    self:OpenCompass()
end

function Quest2004:OnSubFinish200404(arg1)
    print("OnSubFinish200404")
    self:SafeDestroyQuestNpc(npcs.Npc12020Data.alias, 3)
    self:UnSpawn("Gadget70700006")
    self:UnSpawn("Gadget70710434")
    self:UnSpawn(gadgets.Gadget70700006Data.alias)
    pos = nil
end

function Quest2004:OnSubFailed200404(arg1)
    print("OnSubFailed200404")
end

function Quest2004:OnSubStart200405(arg1)
    print("OnSubStart200405")
    self:CreateQuestNpc(arg1, npcs.Npc3129Data.id, 1)
    self:UnCallFunc(self.OpenCompass)
end

function Quest2004:OnSubFinish200405(arg1)
    print("OnSubFinish200405")
    self.SafeDestroyQuestNpc(self, npcs.Npc3129Data.alias, 3)
    self.ActionSafeCall(self, function()
        self:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)
end

function Quest2004:OnSubFailed200405(arg1)
    print("OnSubFailed200405")
end

return Quest2004
