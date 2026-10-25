require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41340 = class("Quest41340", QuestActorProxy)
Quest41340.defaultAlias = "Quest41340"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest41340:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest41340:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4134014"] = self.OnSubStart4134014,
        ["4134001"] = self.OnSubStart4134001,
        ["4134003"] = self.OnSubStart4134003,
        ["4134004"] = self.OnSubStart4134004,
        ["4134005"] = self.OnSubStart4134005,
        ["4134006"] = self.OnSubStart4134006,
        ["4134007"] = self.OnSubStart4134007,
        ["4134008"] = self.OnSubStart4134008,
        ["4134009"] = self.OnSubStart4134009,
        ["4134010"] = self.OnSubStart4134010,
        ["4134011"] = self.OnSubStart4134011,
        ["4134013"] = self.OnSubStart4134013,
        ["4134012"] = self.OnSubStart4134012,
        ["4134002"] = self.OnSubStart4134002
    }
end

function Quest41340:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4134014"] = self.OnSubFinish4134014,
        ["4134001"] = self.OnSubFinish4134001,
        ["4134003"] = self.OnSubFinish4134003,
        ["4134004"] = self.OnSubFinish4134004,
        ["4134005"] = self.OnSubFinish4134005,
        ["4134006"] = self.OnSubFinish4134006,
        ["4134007"] = self.OnSubFinish4134007,
        ["4134008"] = self.OnSubFinish4134008,
        ["4134009"] = self.OnSubFinish4134009,
        ["4134010"] = self.OnSubFinish4134010,
        ["4134011"] = self.OnSubFinish4134011,
        ["4134013"] = self.OnSubFinish4134013,
        ["4134012"] = self.OnSubFinish4134012,
        ["4134002"] = self.OnSubFinish4134002
    }
end

function Quest41340:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4134014"] = self.OnSubFailed4134014,
        ["4134001"] = self.OnSubFailed4134001,
        ["4134003"] = self.OnSubFailed4134003,
        ["4134004"] = self.OnSubFailed4134004,
        ["4134005"] = self.OnSubFailed4134005,
        ["4134006"] = self.OnSubFailed4134006,
        ["4134007"] = self.OnSubFailed4134007,
        ["4134008"] = self.OnSubFailed4134008,
        ["4134009"] = self.OnSubFailed4134009,
        ["4134010"] = self.OnSubFailed4134010,
        ["4134011"] = self.OnSubFailed4134011,
        ["4134013"] = self.OnSubFailed4134013,
        ["4134012"] = self.OnSubFailed4134012,
        ["4134002"] = self.OnSubFailed4134002
    }
end

function Quest41340:Start()
    print("Start")
end

function Quest41340:OnDestroy()
    print("OnDestroy")
end

function Quest41340:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41340:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41340:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2103", 0, true)
    self:NotifyTo("Npc2001", 0, true)
    self:NotifyTo("Npc2036", 0, true)
    self:NotifyTo("Npc2015", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc210301Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc203601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc200101Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70800017Data.alias)
end

function Quest41340:destorynpc()
    print("destorynpc")
    self:DestroyQuestNpcActorByAlias(npcs.Npc210301Data.alias, false)
    self:NotifyTo("Npc2103", 0, true)
    self:NotifyTo("Npc2001", 0, true)
    self:NotifyTo("Npc2036", 0, true)
    self:NotifyTo("Npc2015", 0, true)
end

function Quest41340:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local pos = sceneData:GetDummyPoint(3, "Q4134012agui").pos
        pos.x = pos.x + 0.5
        pos.y = pos.y
        pos.z = pos.z + 0.5
        self:SpawnGadgetByIdWithPos(4134013, 70800017, 1, pos, M.Dir2Euler({x = 0, y = 0, z = 0}), "")
    end
end

function Quest41340:OnSubStart4134014(arg1)
    print("OnSubStart4134014")
end

function Quest41340:OnSubFinish4134014(arg1)
    print("OnSubFinish4134014")
end

function Quest41340:OnSubFailed4134014(arg1)
    print("OnSubFailed4134014")
end

function Quest41340:OnSubStart4134001(arg1)
    print("OnSubStart4134001")
    self:NotifyTo("Npc2103", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc210301Data.id, 1)
end

function Quest41340:OnSubFinish4134001(arg1)
    print("OnSubFinish4134001")
end

function Quest41340:OnSubFailed4134001(arg1)
    print("OnSubFailed4134001")
end

function Quest41340:OnSubStart4134003(arg1)
    print("OnSubStart4134003")
    self:NotifyTo("Npc2103", 1, true)
    self:NotifyTo("Npc2001", 1, true)
    self:NotifyTo("Npc2036", 1, true)
    self:NotifyTo("Npc2015", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc203601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc200101Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1160, true, nil, true, true)
end

function Quest41340:OnSubFinish4134003(arg1)
    print("OnSubFinish4134003")
end

function Quest41340:OnSubFailed4134003(arg1)
    print("OnSubFailed4134003")
end

function Quest41340:OnSubStart4134004(arg1)
    print("OnSubStart4134004")
    self:NotifyTo("Npc2103", 1, true)
    self:NotifyTo("Npc2001", 1, true)
    self:NotifyTo("Npc2036", 1, true)
    self:NotifyTo("Npc2015", 1, true)
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStyle(1160, true, nil, true, true)
end

function Quest41340:OnSubFinish4134004(arg1)
    print("OnSubFinish4134004")
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):DoFreeStateTrigger()
end

function Quest41340:OnSubFailed4134004(arg1)
    print("OnSubFailed4134004")
end

function Quest41340:OnSubStart4134005(arg1)
    print("OnSubStart4134005")
    self:NotifyTo("Npc2103", 1, true)
    self:NotifyTo("Npc2001", 1, true)
    self:NotifyTo("Npc2036", 1, true)
    self:NotifyTo("Npc2015", 1, true)
end

function Quest41340:OnSubFinish4134005(arg1)
    print("OnSubFinish4134005")
end

function Quest41340:OnSubFailed4134005(arg1)
    print("OnSubFailed4134005")
end

function Quest41340:OnSubStart4134006(arg1)
    print("OnSubStart4134006")
    self:NotifyTo("Npc2103", 1, true)
    self:NotifyTo("Npc2001", 1, true)
    self:NotifyTo("Npc2036", 1, true)
    self:NotifyTo("Npc2015", 1, true)
end

function Quest41340:OnSubFinish4134006(arg1)
    print("OnSubFinish4134006")
end

function Quest41340:OnSubFailed4134006(arg1)
    print("OnSubFailed4134006")
end

function Quest41340:OnSubStart4134007(arg1)
    print("OnSubStart4134007")
    self:NotifyTo("Npc2103", 1, true)
    self:NotifyTo("Npc2001", 1, true)
    self:NotifyTo("Npc2036", 1, true)
    self:NotifyTo("Npc2015", 1, true)
end

function Quest41340:OnSubFinish4134007(arg1)
    print("OnSubFinish4134007")
    self:SafeDestroyQuestNpc(npcs.Npc203601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc200101Data.alias, 3)
    self:NotifyTo("Npc2001", 0, true)
    self:NotifyTo("Npc2036", 0, true)
    self:NotifyTo("Npc2015", 0, true)
end

function Quest41340:OnSubFailed4134007(arg1)
    print("OnSubFailed4134007")
end

function Quest41340:OnSubStart4134008(arg1)
    print("OnSubStart4134008")
    self:NotifyTo("Npc2103", 1, true)
end

function Quest41340:OnSubFinish4134008(arg1)
    print("OnSubFinish4134008")
end

function Quest41340:OnSubFailed4134008(arg1)
    print("OnSubFailed4134008")
end

function Quest41340:OnSubStart4134009(arg1)
    print("OnSubStart4134009")
    self:NotifyTo("Npc2103", 1, true)
end

function Quest41340:OnSubFinish4134009(arg1)
    print("OnSubFinish4134009")
end

function Quest41340:OnSubFailed4134009(arg1)
    print("OnSubFailed4134009")
end

function Quest41340:OnSubStart4134010(arg1)
    print("OnSubStart4134010")
    self:NotifyTo("Npc2103", 1, true)
    self:RequestInteraction(npcs.Npc210301Data.alias)
end

function Quest41340:OnSubFinish4134010(arg1)
    print("OnSubFinish4134010")
end

function Quest41340:OnSubFailed4134010(arg1)
    print("OnSubFailed4134010")
end

function Quest41340:OnSubStart4134011(arg1)
    print("OnSubStart4134011")
    self:NotifyTo("Npc2103", 1, true)
end

function Quest41340:OnSubFinish4134011(arg1)
    print("OnSubFinish4134011")
end

function Quest41340:OnSubFailed4134011(arg1)
    print("OnSubFailed4134011")
end

function Quest41340:OnSubStart4134013(arg1)
    print("OnSubStart4134013")
    self:NotifyTo("Npc2103", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc210301Data.id, 1)
end

function Quest41340:OnSubFinish4134013(arg1)
    print("OnSubFinish4134013")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destorynpc, nil, nil, "")
end

function Quest41340:OnSubFailed4134013(arg1)
    print("OnSubFailed4134013")
end

function Quest41340:OnSubStart4134012(arg1)
    print("OnSubStart4134012")
end

function Quest41340:OnSubFinish4134012(arg1)
    print("OnSubFinish4134012")
end

function Quest41340:OnSubFailed4134012(arg1)
    print("OnSubFailed4134012")
end

function Quest41340:OnSubStart4134002(arg1)
    print("OnSubStart4134002")
end

function Quest41340:OnSubFinish4134002(arg1)
    print("OnSubFinish4134002")
end

function Quest41340:OnSubFailed4134002(arg1)
    print("OnSubFailed4134002")
end

return Quest41340
