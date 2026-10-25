require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70514 = class("Quest70514", QuestActorProxy)
Quest70514.defaultAlias = "Quest70514"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70514:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70514:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7051401"] = self.OnSubStart7051401,
        ["7051402"] = self.OnSubStart7051402,
        ["7051403"] = self.OnSubStart7051403,
        ["7051404"] = self.OnSubStart7051404
    }
end

function Quest70514:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7051401"] = self.OnSubFinish7051401,
        ["7051402"] = self.OnSubFinish7051402,
        ["7051403"] = self.OnSubFinish7051403,
        ["7051404"] = self.OnSubFinish7051404
    }
end

function Quest70514:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70514:Start()
    print("Start")
end

function Quest70514:OnDestroy()
    print("OnDestroy")
end

function Quest70514:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70514:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70514:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30217Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1437Data.alias, 3)
end

function Quest70514:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest70514:OnSubStart7051401(arg1)
    print("OnSubStart7051401")
    self:CreateQuestNpc(arg1, npcs.Npc30217Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1437Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc30217Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1437Data.alias):DisableInteeHeadCtrl(true)
end

function Quest70514:OnSubFinish7051401(arg1)
    print("OnSubFinish7051401")
    self:SafeDestroyQuestNpc(npcs.Npc1437Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc30217Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1437Data.alias):DisableInteeHeadCtrl(false)
end

function Quest70514:OnSubStart7051402(arg1)
    print("OnSubStart7051402")
end

function Quest70514:OnSubFinish7051402(arg1)
    print("OnSubFinish7051402")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest70514:OnSubStart7051403(arg1)
    print("OnSubStart7051403")
end

function Quest70514:OnSubFinish7051403(arg1)
    print("OnSubFinish7051403")
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteraction(npcs.Npc30217Data.alias)
    end)
end

function Quest70514:OnSubStart7051404(arg1)
    print("OnSubStart7051404")
end

function Quest70514:OnSubFinish7051404(arg1)
    print("OnSubFinish7051404")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc30217Data.alias)
end

return Quest70514
