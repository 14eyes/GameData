require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71664 = class("Quest71664", QuestActorProxy)
Quest71664.defaultAlias = "Quest71664"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71664:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71664:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7166401"] = self.OnSubStart7166401, ["7166402"] = self.OnSubStart7166402}
end

function Quest71664:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7166401"] = self.OnSubFinish7166401, ["7166402"] = self.OnSubFinish7166402}
end

function Quest71664:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71664:Start()
    print("Start")
end

function Quest71664:OnDestroy()
    print("OnDestroy")
end

function Quest71664:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71664:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71664:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30152Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2078Data.alias, 3)
end

function Quest71664:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest71664:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71664:OnSubStart7166401(arg1)
    print("OnSubStart7166401")
    self:NpcCreate(arg1, npcs.Npc2078Data.id, 1)
end

function Quest71664:OnSubFinish7166401(arg1)
    print("OnSubFinish7166401")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2078Data.alias)
end

function Quest71664:OnSubStart7166402(arg1)
    print("OnSubStart7166402")
    self:NpcCreate(arg1, npcs.Npc30152Data.id, 1)
end

function Quest71664:OnSubFinish7166402(arg1)
    print("OnSubFinish7166402")
    self:ShowBlackScreen(0.3, 1, 0.3, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc30152Data.alias, 3)
        arg1:ActionSafeCall(function(arg1)
            arg1:ShowTutorialDialog(852)
        end)
    end, nil, nil, "", false, true)
end

return Quest71664
