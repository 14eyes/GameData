require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22036 = class("Quest22036", QuestActorProxy)
Quest22036.defaultAlias = "Quest22036"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22036:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2203601"] = self.OnSubStart2203601,
        ["2203602"] = self.OnSubStart2203602,
        ["2203603"] = self.OnSubStart2203603,
        ["2203604"] = self.OnSubStart2203604,
        ["2203605"] = self.OnSubStart2203605,
        ["2203606"] = self.OnSubStart2203606,
        ["2203607"] = self.OnSubStart2203607
    }
end

function Quest22036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2203601"] = self.OnSubFinish2203601,
        ["2203602"] = self.OnSubFinish2203602,
        ["2203603"] = self.OnSubFinish2203603,
        ["2203604"] = self.OnSubFinish2203604,
        ["2203605"] = self.OnSubFinish2203605,
        ["2203606"] = self.OnSubFinish2203606,
        ["2203607"] = self.OnSubFinish2203607
    }
end

function Quest22036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2203601"] = self.OnSubFailed2203601,
        ["2203602"] = self.OnSubFailed2203602,
        ["2203603"] = self.OnSubFailed2203603,
        ["2203604"] = self.OnSubFailed2203604,
        ["2203605"] = self.OnSubFailed2203605,
        ["2203606"] = self.OnSubFailed2203606,
        ["2203607"] = self.OnSubFailed2203607
    }
end

function Quest22036:Start()
    print("Start")
end

function Quest22036:OnDestroy()
    print("OnDestroy")
end

function Quest22036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22036:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3080Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3066Data.alias, 3)
end

function Quest22036:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22036:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        if self:GetQuestVar(2203605, 1) == 1 then
            self:SetQuestVar(2203605, 2, 100)
        else
            self:SetQuestVar(2203605, 3, 100)
        end
    elseif arg1 == 2 then
        if self:GetQuestVar(2203605, 1) == 2 then
            self:SetQuestVar(2203605, 2, 100)
        else
            self:SetQuestVar(2203605, 3, 100)
        end
    elseif arg1 == 3 then
        if self:GetQuestVar(2203605, 1) == 3 then
            self:SetQuestVar(2203605, 2, 100)
        else
            self:SetQuestVar(2203605, 3, 100)
        end
    end
end

function Quest22036:OnSubStart2203601(arg1)
    print("OnSubStart2203601")
    self:CreateQuestNpc(arg1, npcs.Npc3080Data.id, 1)
end

function Quest22036:OnSubFinish2203601(arg1)
    print("OnSubFinish2203601")
end

function Quest22036:OnSubFailed2203601(arg1)
    print("OnSubFailed2203601")
end

function Quest22036:OnSubStart2203602(arg1)
    print("OnSubStart2203602")
end

function Quest22036:OnSubFinish2203602(arg1)
    print("OnSubFinish2203602")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3080Data.alias)
end

function Quest22036:OnSubFailed2203602(arg1)
    print("OnSubFailed2203602")
end

function Quest22036:OnSubStart2203603(arg1)
    print("OnSubStart2203603")
end

function Quest22036:OnSubFinish2203603(arg1)
    print("OnSubFinish2203603")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3080Data.alias)
end

function Quest22036:OnSubFailed2203603(arg1)
    print("OnSubFailed2203603")
end

function Quest22036:OnSubStart2203604(arg1)
    print("OnSubStart2203604")
end

function Quest22036:OnSubFinish2203604(arg1)
    print("OnSubFinish2203604")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3080Data.alias)
end

function Quest22036:OnSubFailed2203604(arg1)
    print("OnSubFailed2203604")
end

function Quest22036:OnSubStart2203605(arg1)
    print("OnSubStart2203605")
    self:CreateQuestNpc(arg1, npcs.Npc3066Data.id, 1)
    self:SetQuestVarByMainId(2, 0)
    self:SetQuestVarByMainId(3, 0)
end

function Quest22036:OnSubFinish2203605(arg1)
    print("OnSubFinish2203605")
end

function Quest22036:OnSubFailed2203605(arg1)
    print("OnSubFailed2203605")
end

function Quest22036:OnSubStart2203606(arg1)
    print("OnSubStart2203606")
end

function Quest22036:OnSubFinish2203606(arg1)
    print("OnSubFinish2203606")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3066Data.alias)
end

function Quest22036:OnSubFailed2203606(arg1)
    print("OnSubFailed2203606")
end

function Quest22036:OnSubStart2203607(arg1)
    print("OnSubStart2203607")
end

function Quest22036:OnSubFinish2203607(arg1)
    print("OnSubFinish2203607")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3066Data.alias)
end

function Quest22036:OnSubFailed2203607(arg1)
    print("OnSubFailed2203607")
end

return Quest22036
