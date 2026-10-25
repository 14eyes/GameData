require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71041 = class("Quest71041", QuestActorProxy)
Quest71041.defaultAlias = "Quest71041"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71041:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7104103"] = self.OnSubStart7104103,
        ["7104104"] = self.OnSubStart7104104,
        ["7104108"] = self.OnSubStart7104108,
        ["7104107"] = self.OnSubStart7104107,
        ["7104101"] = self.OnSubStart7104101,
        ["7104102"] = self.OnSubStart7104102,
        ["7104109"] = self.OnSubStart7104109,
        ["7104110"] = self.OnSubStart7104110,
        ["7104111"] = self.OnSubStart7104111
    }
end

function Quest71041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7104103"] = self.OnSubFinish7104103,
        ["7104104"] = self.OnSubFinish7104104,
        ["7104108"] = self.OnSubFinish7104108,
        ["7104107"] = self.OnSubFinish7104107,
        ["7104101"] = self.OnSubFinish7104101,
        ["7104102"] = self.OnSubFinish7104102,
        ["7104109"] = self.OnSubFinish7104109,
        ["7104110"] = self.OnSubFinish7104110,
        ["7104111"] = self.OnSubFinish7104111
    }
end

function Quest71041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71041:Start()
    print("Start")
end

function Quest71041:OnDestroy()
    print("OnDestroy")
end

function Quest71041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71041:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71041:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest71041:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71041:OnSubStart7104103(arg1)
    print("OnSubStart7104103")
    self:CreateQuestNpc(arg1, npcs.Npc2617Data.id, 1)
end

function Quest71041:OnSubFinish7104103(arg1)
    print("OnSubFinish7104103")
end

function Quest71041:OnSubStart7104104(arg1)
    print("OnSubStart7104104")
end

function Quest71041:OnSubFinish7104104(arg1)
    print("OnSubFinish7104104")
end

function Quest71041:OnSubStart7104108(arg1)
    print("OnSubStart7104108")
end

function Quest71041:OnSubFinish7104108(arg1)
    print("OnSubFinish7104108")
end

function Quest71041:OnSubStart7104107(arg1)
    print("OnSubStart7104107")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc2617Data.id, 1, npcs.Npc2617Data.alias)
    self:TransmitPlayerById(arg1, datas.TransmitPoint.point_id)
end

function Quest71041:OnSubFinish7104107(arg1)
    print("OnSubFinish7104107")
    self:SafeDestroyQuestNpc(npcs.Npc20523Data.alias, 6)
    self:NpcDestroyWithBlackscreen(6, npcs.Npc2617Data.alias)
end

function Quest71041:OnSubStart7104101(arg1)
    print("OnSubStart7104101")
end

function Quest71041:OnSubFinish7104101(arg1)
    print("OnSubFinish7104101")
end

function Quest71041:OnSubStart7104102(arg1)
    print("OnSubStart7104102")
end

function Quest71041:OnSubFinish7104102(arg1)
    print("OnSubFinish7104102")
end

function Quest71041:OnSubStart7104109(arg1)
    print("OnSubStart7104109")
    self:CreateQuestNpc(arg1, npcs.Npc20543Data.id, 2)
end

function Quest71041:OnSubFinish7104109(arg1)
    print("OnSubFinish7104109")
    self:SafeDestroyQuestNpc(npcs.Npc20543Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc20523Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc2617Data.alias, 6)
end

function Quest71041:OnSubStart7104110(arg1)
    print("OnSubStart7104110")
end

function Quest71041:OnSubFinish7104110(arg1)
    print("OnSubFinish7104110")
end

function Quest71041:OnSubStart7104111(arg1)
    print("OnSubStart7104111")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20523Data.id, 1, npcs.Npc20523Data.alias)
end

function Quest71041:OnSubFinish7104111(arg1)
    print("OnSubFinish7104111")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20523Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc2617Data.alias, 6)
end

return Quest71041
