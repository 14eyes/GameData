require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71033 = class("Quest71033", QuestActorProxy)
Quest71033.defaultAlias = "Quest71033"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest71033:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest71033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7103313"] = self.OnSubStart7103313,
        ["7103301"] = self.OnSubStart7103301,
        ["7103302"] = self.OnSubStart7103302,
        ["7103303"] = self.OnSubStart7103303,
        ["7103304"] = self.OnSubStart7103304,
        ["7103305"] = self.OnSubStart7103305,
        ["7103306"] = self.OnSubStart7103306,
        ["7103307"] = self.OnSubStart7103307,
        ["7103308"] = self.OnSubStart7103308,
        ["7103309"] = self.OnSubStart7103309,
        ["7103310"] = self.OnSubStart7103310,
        ["7103311"] = self.OnSubStart7103311,
        ["7103312"] = self.OnSubStart7103312,
        ["7103313"] = self.OnSubStart7103313,
        ["7103314"] = self.OnSubStart7103314,
        ["7103315"] = self.OnSubStart7103315
    }
end

function Quest71033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7103313"] = self.OnSubFinish7103313,
        ["7103301"] = self.OnSubFinish7103301,
        ["7103302"] = self.OnSubFinish7103302,
        ["7103303"] = self.OnSubFinish7103303,
        ["7103304"] = self.OnSubFinish7103304,
        ["7103305"] = self.OnSubFinish7103305,
        ["7103306"] = self.OnSubFinish7103306,
        ["7103307"] = self.OnSubFinish7103307,
        ["7103308"] = self.OnSubFinish7103308,
        ["7103309"] = self.OnSubFinish7103309,
        ["7103310"] = self.OnSubFinish7103310,
        ["7103311"] = self.OnSubFinish7103311,
        ["7103312"] = self.OnSubFinish7103312,
        ["7103313"] = self.OnSubFinish7103313,
        ["7103314"] = self.OnSubFinish7103314,
        ["7103315"] = self.OnSubFinish7103315
    }
end

function Quest71033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7103313"] = self.OnSubFailed7103313,
        ["7103301"] = self.OnSubFailed7103301,
        ["7103302"] = self.OnSubFailed7103302,
        ["7103303"] = self.OnSubFailed7103303,
        ["7103304"] = self.OnSubFailed7103304,
        ["7103305"] = self.OnSubFailed7103305,
        ["7103306"] = self.OnSubFailed7103306,
        ["7103307"] = self.OnSubFailed7103307,
        ["7103308"] = self.OnSubFailed7103308,
        ["7103309"] = self.OnSubFailed7103309,
        ["7103310"] = self.OnSubFailed7103310,
        ["7103311"] = self.OnSubFailed7103311,
        ["7103312"] = self.OnSubFailed7103312
    }
end

function Quest71033:Start()
    print("Start")
end

function Quest71033:OnDestroy()
    print("OnDestroy")
end

function Quest71033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71033:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc240901Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc220501Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc230501Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc230901Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc230801Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc230601Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc10375Data.alias, 3)
        self:NotifyTo(npcs.Npc2409Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2205Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2305Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2309Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2308Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2306Data.alias, 0, true)
        self:UnSpawn(gadgets.Gadget70710023Data.alias)
        self:UnSpawn(gadgets.Gadget70710305Data.alias)
        self:UnSpawn(gadgets.Gadget70710290Data.alias)
    end)
end

function Quest71033:OnSubStart7103313(arg1)
    print("OnSubStart7103313")
end

function Quest71033:OnSubFinish7103313(arg1)
    print("OnSubFinish7103313")
end

function Quest71033:OnSubFailed7103313(arg1)
    print("OnSubFailed7103313")
end

function Quest71033:OnSubStart7103301(arg1)
    print("OnSubStart7103301")
    self:CreateQuestNpc(arg1, npcs.Npc240901Data.id, 0)
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
end

function Quest71033:OnSubFinish7103301(arg1)
    print("OnSubFinish7103301")
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:DestroyQuestNpcActor(npcs.Npc240901Data.alias, 3)
        end)
    end)
end

function Quest71033:OnSubFailed7103301(arg1)
    print("OnSubFailed7103301")
end

function Quest71033:OnSubStart7103302(arg1)
    print("OnSubStart7103302")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q71033Trigger1_.alias, datas.Q71033Trigger1_.script, datas.Q71033Trigger1_.id, 0, datas.Q71033Trigger1_.point.pos, datas.Q71033Trigger1_.point.rot, true, false, 3)
end

function Quest71033:OnSubFinish7103302(arg1)
    print("OnSubFinish7103302")
end

function Quest71033:OnSubFailed7103302(arg1)
    print("OnSubFailed7103302")
end

function Quest71033:OnSubStart7103303(arg1)
    print("OnSubStart7103303")
    self.NotifyTo(self, npcs.Npc2409Data.alias, 1, true)
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc240901Data.id, 0)
        self:RequestInteraction(npcs.Npc240901Data.alias)
    end)
end

function Quest71033:OnSubFinish7103303(arg1)
    print("OnSubFinish7103303")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc240901Data.alias, 3)
    end)
end

function Quest71033:OnSubFailed7103303(arg1)
    print("OnSubFailed7103303")
end

function Quest71033:OnSubStart7103304(arg1)
    print("OnSubStart7103304")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2306Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc230601Data.id, 0)
end

function Quest71033:OnSubFinish7103304(arg1)
    print("OnSubFinish7103304")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc240901Data.alias)
    self:ActionSafeCall(function()
        questNpcActor:DoFreeStyle(1190)
    end)
end

function Quest71033:OnSubFailed7103304(arg1)
    print("OnSubFailed7103304")
end

function Quest71033:OnSubStart7103305(arg1)
    print("OnSubStart7103305")
    self:CreateQuestNpc(arg1, npcs.Npc220501Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc230501Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc230801Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc230901Data.id)
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2306Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2305Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2309Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc240901Data.alias)
    local v = self:GetQuestNpcActor(npcs.Npc230601Data.alias)
    questNpcActor:DoFreeStyle(1190, false)
    questNpcActor:LookAt({x = 1752.002, y = 257.73, z = 529.975})
    v:LookAt({x = 1752.525, y = 258.04, z = 530.635})
    self:GetQuestNpcActor(npcs.Npc230501Data.alias):DoFreeStyle(1060, false)
    self:GetQuestNpcActor(npcs.Npc230901Data.alias):DoFreeStyle(5010, false)
end

function Quest71033:OnSubFinish7103305(arg1)
    print("OnSubFinish7103305")
end

function Quest71033:OnSubFailed7103305(arg1)
    print("OnSubFailed7103305")
end

function Quest71033:OnSubStart7103306(arg1)
    print("OnSubStart7103306")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2306Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2305Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2309Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc240901Data.alias)
    local v = self:GetQuestNpcActor(npcs.Npc240901Data.alias)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc230601Data.alias)
    v:DoFreeStyle(1190, false)
    v:LookAt({x = 1752.002, y = 257.73, z = 529.975})
    questNpcActor2:LookAt({x = 1752.525, y = 258.04, z = 530.635})
    self:SpawnGadget(arg1, gadgets.Gadget70710023Data.id, 1)
end

function Quest71033:OnSubFinish7103306(arg1)
    print("OnSubFinish7103306")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
    self:EnterSceneLookCamera({x = 1670.323, y = 229.183, z = 731.67}, 0, 4, true, false)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(4, function()
        globalActor:EnablePlayerInput(true)
    end)

    self:DestroyQuestNpcActor(npcs.Npc230601Data.alias, 3)
    self:NotifyTo(npcs.Npc2306Data.alias, 0, true)
end

function Quest71033:OnSubFailed7103306(arg1)
    print("OnSubFailed7103306")
end

function Quest71033:OnSubStart7103307(arg1)
    print("OnSubStart7103307")
    self:CreateQuestNpc(arg1, npcs.Npc240901Data.id)
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2305Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2309Data.alias, 1, true)
    self:SpawnGadget(arg1, gadgets.Gadget70710023Data.id, 1)
end

function Quest71033:OnSubFinish7103307(arg1)
    print("OnSubFinish7103307")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
    self:EnterSceneLookCamera({x = 1921.572, y = 239.8225, z = 627.6352}, 0, 4, true, false)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(4, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest71033:OnSubFailed7103307(arg1)
    print("OnSubFailed7103307")
end

function Quest71033:OnSubStart7103308(arg1)
    print("OnSubStart7103308")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2305Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2309Data.alias, 1, true)
    self:SpawnGadget(arg1, gadgets.Gadget70710023Data.id, 1)
end

function Quest71033:OnSubFinish7103308(arg1)
    print("OnSubFinish7103308")
end

function Quest71033:OnSubFailed7103308(arg1)
    print("OnSubFailed7103308")
end

function Quest71033:OnSubStart7103309(arg1)
    print("OnSubStart7103309")
    self.NotifyTo(self, npcs.Npc2409Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc2205Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc2305Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc2308Data.alias, 1, true)
    self.NotifyTo(self, npcs.Npc2309Data.alias, 1, true)
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc220501Data.id)
        self:RequestInteraction(npcs.Npc220501Data.alias)
    end)
end

function Quest71033:OnSubFinish7103309(arg1)
    print("OnSubFinish7103309")
end

function Quest71033:OnSubFailed7103309(arg1)
    print("OnSubFailed7103309")
end

function Quest71033:OnSubStart7103310(arg1)
    print("OnSubStart7103310")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2305Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2309Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc220501Data.id)
end

function Quest71033:OnSubFinish7103310(arg1)
    print("OnSubFinish7103310")
end

function Quest71033:OnSubFailed7103310(arg1)
    print("OnSubFailed7103310")
end

function Quest71033:OnSubStart7103315(arg1)
    print("OnSubStart7103315")
    self:SpawnGadget(arg1, gadgets.Gadget70710305Data.id)
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2305Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2309Data.alias, 1, true)
end

function Quest71033:OnSubFinish7103315(arg1)
    print("OnSubFinish7103315")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:SpawnGadget(arg1, gadgets.Gadget70710290Data.id)
        self:CreateQuestNpc(arg1, npcs.Npc10375Data.id)
    end)
end

function Quest71033:OnSubStart7103314(arg1)
    print("OnSubStart7103314")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2305Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2309Data.alias, 1, true)
end

function Quest71033:OnSubFinish7103314(arg1)
    print("OnSubFinish7103314")
end

function Quest71033:OnSubStart7103311(arg1)
    print("OnSubStart7103311")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2306Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2305Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2309Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc220501Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc230601Data.id)
end

function Quest71033:OnSubFinish7103311(arg1)
    print("OnSubFinish7103311")
    self.ActionSafeCall(self, function()
        self:NarratorOnlyTask(datas.NarratorTable3, nil, "")
    end)
end

function Quest71033:OnSubFailed7103311(arg1)
    print("OnSubFailed7103311")
end

function Quest71033:OnSubStart7103312(arg1)
    print("OnSubStart7103312")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2306Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2305Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2309Data.alias, 1, true)
end

function Quest71033:OnSubFinish7103312(arg1)
    print("OnSubFinish7103312")
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            local Q71034ClientConfig = require("Quest/Client/Q71034ClientConfig")
            local actor = actorMgr:GetActor(Q71034ClientConfig.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 7103401)
            end

            self:DestroyQuestNpcActor(npcs.Npc230601Data.alias, 3)
            self:DestroyQuestNpcActor(npcs.Npc10375Data.alias, 3)
            self:NotifyTo(npcs.Npc2306Data.alias, 0, true)
            self:UnSpawn(gadgets.Gadget70710023Data.alias)
        end)
    end)
end

function Quest71033:OnSubFailed7103312(arg1)
    print("OnSubFailed7103312")
end

return Quest71033
