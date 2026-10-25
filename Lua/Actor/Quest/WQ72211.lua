require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72211 = class("Quest72211", QuestActorProxy)
Quest72211.defaultAlias = "Quest72211"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72211:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72211:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7221101"] = self.OnSubStart7221101,
        ["7221102"] = self.OnSubStart7221102,
        ["7221103"] = self.OnSubStart7221103,
        ["7221104"] = self.OnSubStart7221104,
        ["7221108"] = self.OnSubStart7221108,
        ["7221105"] = self.OnSubStart7221105,
        ["7221106"] = self.OnSubStart7221106,
        ["7221109"] = self.OnSubStart7221109,
        ["7221110"] = self.OnSubStart7221110,
        ["7221111"] = self.OnSubStart7221111,
        ["7221112"] = self.OnSubStart7221112,
        ["7221107"] = self.OnSubStart7221107
    }
end

function Quest72211:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7221101"] = self.OnSubFinish7221101,
        ["7221102"] = self.OnSubFinish7221102,
        ["7221103"] = self.OnSubFinish7221103,
        ["7221104"] = self.OnSubFinish7221104,
        ["7221108"] = self.OnSubFinish7221108,
        ["7221105"] = self.OnSubFinish7221105,
        ["7221106"] = self.OnSubFinish7221106,
        ["7221109"] = self.OnSubFinish7221109,
        ["7221110"] = self.OnSubFinish7221110,
        ["7221111"] = self.OnSubFinish7221111,
        ["7221112"] = self.OnSubFinish7221112,
        ["7221107"] = self.OnSubFinish7221107
    }
end

function Quest72211:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7221101"] = self.OnSubFailed7221101,
        ["7221102"] = self.OnSubFailed7221102,
        ["7221103"] = self.OnSubFailed7221103,
        ["7221104"] = self.OnSubFailed7221104,
        ["7221108"] = self.OnSubFailed7221108,
        ["7221105"] = self.OnSubFailed7221105,
        ["7221106"] = self.OnSubFailed7221106,
        ["7221109"] = self.OnSubFailed7221109,
        ["7221110"] = self.OnSubFailed7221110,
        ["7221111"] = self.OnSubFailed7221111,
        ["7221112"] = self.OnSubFailed7221112,
        ["7221107"] = self.OnSubFailed7221107
    }
end

function Quest72211:Start()
    print("Start")
end

function Quest72211:OnDestroy()
    print("OnDestroy")
end

function Quest72211:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72211:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72211:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72211:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72211:OnSubStart7221101(arg1)
    print("OnSubStart7221101")
    self:CreateQuestNpc(arg1, npcs.Npc3180Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3181Data.id, 2)
end

function Quest72211:OnSubFinish7221101(arg1)
    print("OnSubFinish7221101")
end

function Quest72211:OnSubFailed7221101(arg1)
    print("OnSubFailed7221101")
end

function Quest72211:OnSubStart7221102(arg1)
    print("OnSubStart7221102")
end

function Quest72211:OnSubFinish7221102(arg1)
    print("OnSubFinish7221102")
end

function Quest72211:OnSubFailed7221102(arg1)
    print("OnSubFailed7221102")
end

function Quest72211:OnSubStart7221103(arg1)
    print("OnSubStart7221103")
end

function Quest72211:OnSubFinish7221103(arg1)
    print("OnSubFinish7221103")
end

function Quest72211:OnSubFailed7221103(arg1)
    print("OnSubFailed7221103")
end

function Quest72211:OnSubStart7221104(arg1)
    print("OnSubStart7221104")
end

function Quest72211:OnSubFinish7221104(arg1)
    print("OnSubFinish7221104")
end

function Quest72211:OnSubFailed7221104(arg1)
    print("OnSubFailed7221104")
end

function Quest72211:OnSubStart7221108(arg1)
    print("OnSubStart7221108")
end

function Quest72211:OnSubFinish7221108(arg1)
    print("OnSubFinish7221108")
end

function Quest72211:OnSubFailed7221108(arg1)
    print("OnSubFailed7221108")
end

function Quest72211:OnSubStart7221105(arg1)
    print("OnSubStart7221105")
end

function Quest72211:OnSubFinish7221105(arg1)
    print("OnSubFinish7221105")
end

function Quest72211:OnSubFailed7221105(arg1)
    print("OnSubFailed7221105")
end

function Quest72211:OnSubStart7221106(arg1)
    print("OnSubStart7221106")
end

function Quest72211:OnSubFinish7221106(arg1)
    print("OnSubFinish7221106")
end

function Quest72211:OnSubFailed7221106(arg1)
    print("OnSubFailed7221106")
end

function Quest72211:OnSubStart7221109(arg1)
    print("OnSubStart7221109")
end

function Quest72211:OnSubFinish7221109(arg1)
    print("OnSubFinish7221109")
end

function Quest72211:OnSubFailed7221109(arg1)
    print("OnSubFailed7221109")
end

function Quest72211:OnSubStart7221110(arg1)
    print("OnSubStart7221110")
end

function Quest72211:OnSubFinish7221110(arg1)
    print("OnSubFinish7221110")
end

function Quest72211:OnSubFailed7221110(arg1)
    print("OnSubFailed7221110")
end

function Quest72211:OnSubStart7221111(arg1)
    print("OnSubStart7221111")
end

function Quest72211:OnSubFinish7221111(arg1)
    print("OnSubFinish7221111")
end

function Quest72211:OnSubFailed7221111(arg1)
    print("OnSubFailed7221111")
end

function Quest72211:OnSubStart7221112(arg1)
    print("OnSubStart7221112")
end

function Quest72211:OnSubFinish7221112(arg1)
    print("OnSubFinish7221112")
end

function Quest72211:OnSubFailed7221112(arg1)
    print("OnSubFailed7221112")
end

function Quest72211:OnSubStart7221107(arg1)
    print("OnSubStart7221107")
    self:NarratorOnlyTask(datas.pm01, nil, "")
end

function Quest72211:OnSubFinish7221107(arg1)
    print("OnSubFinish7221107")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3180Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3181Data.alias)
end

function Quest72211:OnSubFailed7221107(arg1)
    print("OnSubFailed7221107")
end

return Quest72211
