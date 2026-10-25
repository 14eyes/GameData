require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73100 = class("Quest73100", QuestActorProxy)
Quest73100.defaultAlias = "Quest73100"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73100:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73100:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7310014"] = self.OnSubStart7310014,
        ["7310001"] = self.OnSubStart7310001,
        ["7310002"] = self.OnSubStart7310002,
        ["7310003"] = self.OnSubStart7310003,
        ["7310004"] = self.OnSubStart7310004,
        ["7310005"] = self.OnSubStart7310005,
        ["7310006"] = self.OnSubStart7310006,
        ["7310007"] = self.OnSubStart7310007,
        ["7310008"] = self.OnSubStart7310008,
        ["7310009"] = self.OnSubStart7310009,
        ["7310010"] = self.OnSubStart7310010,
        ["7310011"] = self.OnSubStart7310011,
        ["7310012"] = self.OnSubStart7310012,
        ["7310013"] = self.OnSubStart7310013,
        ["7310015"] = self.OnSubStart7310015
    }
end

function Quest73100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7310014"] = self.OnSubFinish7310014,
        ["7310001"] = self.OnSubFinish7310001,
        ["7310002"] = self.OnSubFinish7310002,
        ["7310003"] = self.OnSubFinish7310003,
        ["7310004"] = self.OnSubFinish7310004,
        ["7310005"] = self.OnSubFinish7310005,
        ["7310006"] = self.OnSubFinish7310006,
        ["7310007"] = self.OnSubFinish7310007,
        ["7310008"] = self.OnSubFinish7310008,
        ["7310009"] = self.OnSubFinish7310009,
        ["7310010"] = self.OnSubFinish7310010,
        ["7310011"] = self.OnSubFinish7310011,
        ["7310012"] = self.OnSubFinish7310012,
        ["7310013"] = self.OnSubFinish7310013,
        ["7310015"] = self.OnSubFinish7310015
    }
end

function Quest73100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73100:Start()
    print("Start")
end

function Quest73100:OnDestroy()
    print("OnDestroy")
end

function Quest73100:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73100:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73100:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73100:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73100:OnSubStart7310014(arg1)
    print("OnSubStart7310014")
    self:CreateQuestNpc(arg1, npcs.Npc4246Data.id, 1)
end

function Quest73100:OnSubFinish7310014(arg1)
    print("OnSubFinish7310014")
end

function Quest73100:OnSubStart7310001(arg1)
    print("OnSubStart7310001")
end

function Quest73100:OnSubFinish7310001(arg1)
    print("OnSubFinish7310001")
end

function Quest73100:OnSubStart7310002(arg1)
    print("OnSubStart7310002")
end

function Quest73100:OnSubFinish7310002(arg1)
    print("OnSubFinish7310002")
end

function Quest73100:OnSubStart7310003(arg1)
    print("OnSubStart7310003")
end

function Quest73100:OnSubFinish7310003(arg1)
    print("OnSubFinish7310003")
end

function Quest73100:OnSubStart7310004(arg1)
    print("OnSubStart7310004")
end

function Quest73100:OnSubFinish7310004(arg1)
    print("OnSubFinish7310004")
end

function Quest73100:OnSubStart7310005(arg1)
    print("OnSubStart7310005")
end

function Quest73100:OnSubFinish7310005(arg1)
    print("OnSubFinish7310005")
end

function Quest73100:OnSubStart7310006(arg1)
    print("OnSubStart7310006")
end

function Quest73100:OnSubFinish7310006(arg1)
    print("OnSubFinish7310006")
end

function Quest73100:OnSubStart7310007(arg1)
    print("OnSubStart7310007")
end

function Quest73100:OnSubFinish7310007(arg1)
    print("OnSubFinish7310007")
end

function Quest73100:OnSubStart7310008(arg1)
    print("OnSubStart7310008")
end

function Quest73100:OnSubFinish7310008(arg1)
    print("OnSubFinish7310008")
end

function Quest73100:OnSubStart7310009(arg1)
    print("OnSubStart7310009")
end

function Quest73100:OnSubFinish7310009(arg1)
    print("OnSubFinish7310009")
end

function Quest73100:OnSubStart7310010(arg1)
    print("OnSubStart7310010")
end

function Quest73100:OnSubFinish7310010(arg1)
    print("OnSubFinish7310010")
end

function Quest73100:OnSubStart7310011(arg1)
    print("OnSubStart7310011")
end

function Quest73100:OnSubFinish7310011(arg1)
    print("OnSubFinish7310011")
end

function Quest73100:OnSubStart7310012(arg1)
    print("OnSubStart7310012")
end

function Quest73100:OnSubFinish7310012(arg1)
    print("OnSubFinish7310012")
end

function Quest73100:OnSubStart7310013(arg1)
    print("OnSubStart7310013")
end

function Quest73100:OnSubFinish7310013(arg1)
    print("OnSubFinish7310013")
end

function Quest73100:OnSubStart7310015(arg1)
    print("OnSubStart7310015")
    actorMgr:CreateActorWithPos("Q73100Trigger", "Actor/Gadget/Q73100Trigger", 70900002, 0, {x = -278.955, y = 193.617, z = 3237.427}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73100:OnSubFinish7310015(arg1)
    print("OnSubFinish7310015")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4246Data.alias)
end

return Quest73100
