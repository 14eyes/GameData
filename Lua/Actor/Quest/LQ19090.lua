require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19090 = class("Quest19090", QuestActorProxy)
Quest19090.defaultAlias = "Quest19090"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest19090:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest19090:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1909002"] = self.OnSubStart1909002,
        ["1909003"] = self.OnSubStart1909003,
        ["1909006"] = self.OnSubStart1909006,
        ["1909001"] = self.OnSubStart1909001,
        ["1909007"] = self.OnSubStart1909007,
        ["1909008"] = self.OnSubStart1909008,
        ["1909004"] = self.OnSubStart1909004,
        ["1909005"] = self.OnSubStart1909005
    }
end

function Quest19090:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1909002"] = self.OnSubFinish1909002,
        ["1909003"] = self.OnSubFinish1909003,
        ["1909006"] = self.OnSubFinish1909006,
        ["1909001"] = self.OnSubFinish1909001,
        ["1909007"] = self.OnSubFinish1909007,
        ["1909008"] = self.OnSubFinish1909008,
        ["1909004"] = self.OnSubFinish1909004,
        ["1909005"] = self.OnSubFinish1909005
    }
end

function Quest19090:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1909002"] = self.OnSubFailed1909002,
        ["1909003"] = self.OnSubFailed1909003,
        ["1909006"] = self.OnSubFailed1909006,
        ["1909001"] = self.OnSubFailed1909001,
        ["1909007"] = self.OnSubFailed1909007,
        ["1909008"] = self.OnSubFailed1909008,
        ["1909004"] = self.OnSubFailed1909004,
        ["1909005"] = self.OnSubFailed1909005
    }
end

function Quest19090:Start()
    print("Start")
end

function Quest19090:OnDestroy()
    print("OnDestroy")
end

function Quest19090:OnMainFinished(arg1)
    local actor = actorMgr:GetActor(datas.Q19090Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q19090Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest19090:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19090:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710327Data.alias)
    self:UnSpawn(gadgets.Gadget70710338Data.alias)
    self:UnSpawn(gadgets.Gadget70710344Data.alias)
    self:UnSpawn("Gadget70710356data1")
    self:UnSpawn("Gadget70710356data2")
    self:UnSpawn("Gadget70710356data3")
    self:UnSpawn(gadgets.Gadget70540011Data.alias)
    local actor = actorMgr:GetActor(datas.Q19090Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q19090Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest19090:destroyNoel()
    print("destroyNoel")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest19090:blackscreen1()
    print("blackscreen1")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel1, nil, nil, "")
end

function Quest19090:createNoel1()
    print("createNoel1")
    self:CreateQuestNpcById(1909006, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1909001)
    self:RequestInteraction(npcs.Npc1027Data.alias)
end

function Quest19090:blackscreen2()
    print("blackscreen2")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel2, nil, nil, "")
end

function Quest19090:createNoel2()
    print("createNoel2")
    self:CreateQuestNpcById(1909008, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1909002)
    self:RequestInteraction(npcs.Npc1027Data.alias)
end

function Quest19090:Narrator1()
    print("Narrator1")
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 19090)
end

function Quest19090:destroyNoel2()
    print("destroyNoel2")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710344Data.alias)
end

function Quest19090:OnSubStart1909002(arg1)
    print("OnSubStart1909002")
    self:UnSpawn(gadgets.Gadget70710327Data.alias)
    self:UnSpawn(gadgets.Gadget70710356Data1.alias)
    self:UnSpawn(gadgets.Gadget70710356Data2.alias)
    self:UnSpawn(gadgets.Gadget70710356Data3.alias)
    self:UnSpawn(gadgets.Gadget70540011Data.alias)
    self:SpawnGadget(arg1, 70710327, 4)
    self:SpawnGadget(arg1, 70710356, 1)
    self:SpawnGadget(arg1, 70710356, 2)
    self:SpawnGadget(arg1, 70710356, 3)
    self:SpawnGadget(arg1, 70540011, 5)
end

function Quest19090:OnSubFinish1909002(arg1)
    self.UnSpawn(self, gadgets.Gadget70710327Data.alias)
    self.UnSpawn(self, "Gadget70710356data1")
    self.UnSpawn(self, "Gadget70710356data2")
    self.UnSpawn(self, "Gadget70710356data3")
    self.NarratorOnlyTaskByData(self, datas.Narrator2, function()
        self:NarratorOnlyTaskByData(datas.Narrator3, nil, 19090)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1909003camera").pos, 2, 2, true, true)
        globalActor:EnablePlayerInput(false)
        self:CallDelay(2, function()
            globalActor:EnablePlayerInput(true)
        end)
    end, 19090)
end

function Quest19090:OnSubFailed1909002(arg1)
    print("OnSubFailed1909002")
end

function Quest19090:OnSubStart1909003(arg1)
    globalActor:EnablePlayerInput(true)
end

function Quest19090:OnSubFinish1909003(arg1)
    print("OnSubFinish1909003")
end

function Quest19090:OnSubFailed1909003(arg1)
    print("OnSubFailed1909003")
end

function Quest19090:OnSubStart1909006(arg1)
    print("OnSubStart1909006")
    self:CallDelay(2, self.blackscreen1)
end

function Quest19090:OnSubFinish1909006(arg1)
    print("OnSubFinish1909006")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19090:OnSubFailed1909006(arg1)
    print("OnSubFailed1909006")
end

function Quest19090:OnSubStart1909001(arg1)
    print("OnSubStart1909001")
    self:UnSpawn(gadgets.Gadget70710338Data.alias)
    self:SpawnGadget(arg1, 70710338, 1)
    actorMgr:CreateActorWithPos(datas.Q19090Trigger1_.alias, datas.Q19090Trigger1_.script, datas.Q19090Trigger1_.id, 0, datas.Q19090Trigger1_.point.pos, datas.Q19090Trigger1_.point.rot, true, false, 3)
end

function Quest19090:OnSubFinish1909001(arg1)
    self.UnSpawn(self, gadgets.Gadget70710338Data.alias)
    self.UnSpawn(self, gadgets.Gadget70710344Data.alias)
    self.UnSpawn(self, gadgets.Gadget70540011Data.alias)
    self.DelaySpawnGadget(self, arg1, 70710344, 2, 0)
    self.CallDelay(self, 2, function()
        self:NarratorOnlyTaskByData(datas.Narrator1, nil, 19090)
    end)

    self.CallDelay(self, 1, function()
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1909001camera").pos, 2, 2, true, true)
        globalActor:EnablePlayerInput(false)
        self:CallDelay(2, function()
            globalActor:EnablePlayerInput(true)
        end)
    end)

    actorMgr:CreateActorWithPos(datas.Q19090Trigger2_.alias, datas.Q19090Trigger2_.script, datas.Q19090Trigger2_.id, 0, datas.Q19090Trigger2_.point.pos, datas.Q19090Trigger2_.point.rot, true, false, 3)
end

function Quest19090:OnSubFailed1909001(arg1)
    print("OnSubFailed1909001")
    self:UnSpawn(gadgets.Gadget70710338Data.alias)
end

function Quest19090:OnSubStart1909007(arg1)
    globalActor:EnablePlayerInput(true)
end

function Quest19090:OnSubFinish1909007(arg1)
    print("OnSubFinish1909007")
end

function Quest19090:OnSubFailed1909007(arg1)
    print("OnSubFailed1909007")
    self:UnSpawn(gadgets.Gadget70710344Data.alias)
end

function Quest19090:OnSubStart1909008(arg1)
    print("OnSubStart1909008")
    self:CallDelay(2, self.blackscreen2)
end

function Quest19090:OnSubFinish1909008(arg1)
    print("OnSubFinish1909008")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel2, nil, nil, "")
end

function Quest19090:OnSubFailed1909008(arg1)
    print("OnSubFailed1909008")
end

function Quest19090:OnSubStart1909004(arg1)
    print("OnSubStart1909004")
end

function Quest19090:OnSubFinish1909004(arg1)
    print("OnSubFinish1909004")
end

function Quest19090:OnSubFailed1909004(arg1)
    print("OnSubFailed1909004")
end

function Quest19090:OnSubStart1909005(arg1)
    print("OnSubStart1909005")
end

function Quest19090:OnSubFinish1909005(arg1)
    print("OnSubFinish1909005")
end

function Quest19090:OnSubFailed1909005(arg1)
    print("OnSubFailed1909005")
end

return Quest19090
