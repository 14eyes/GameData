require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73503 = class("Quest73503", QuestActorProxy)
Quest73503.defaultAlias = "Quest73503"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73503:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73503:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7350303"] = self.OnSubStart7350303,
        ["7350305"] = self.OnSubStart7350305,
        ["7350306"] = self.OnSubStart7350306,
        ["7350307"] = self.OnSubStart7350307,
        ["7350301"] = self.OnSubStart7350301,
        ["7350308"] = self.OnSubStart7350308,
        ["7350309"] = self.OnSubStart7350309,
        ["7350310"] = self.OnSubStart7350310,
        ["7350302"] = self.OnSubStart7350302,
        ["7350311"] = self.OnSubStart7350311,
        ["7350312"] = self.OnSubStart7350312,
        ["7350313"] = self.OnSubStart7350313,
        ["7350304"] = self.OnSubStart7350304
    }
end

function Quest73503:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7350303"] = self.OnSubFinish7350303,
        ["7350305"] = self.OnSubFinish7350305,
        ["7350306"] = self.OnSubFinish7350306,
        ["7350307"] = self.OnSubFinish7350307,
        ["7350301"] = self.OnSubFinish7350301,
        ["7350308"] = self.OnSubFinish7350308,
        ["7350309"] = self.OnSubFinish7350309,
        ["7350310"] = self.OnSubFinish7350310,
        ["7350302"] = self.OnSubFinish7350302,
        ["7350311"] = self.OnSubFinish7350311,
        ["7350312"] = self.OnSubFinish7350312,
        ["7350313"] = self.OnSubFinish7350313,
        ["7350304"] = self.OnSubFinish7350304
    }
end

function Quest73503:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73503:Start()
    print("Start")
end

function Quest73503:OnDestroy()
    print("OnDestroy")
end

function Quest73503:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73503:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73503:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73503:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest73503:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 11 then
        self:SetQuestVarByMainId(1, 1)
    elseif arg1 == 12 then
        self:SetQuestVarByMainId(1, 2)
    elseif arg1 == 13 then
        self:SetQuestVarByMainId(1, 3)
    elseif arg1 == 21 then
        self:SetQuestVarByMainId(2, 1)
    elseif arg1 == 22 then
        self:SetQuestVarByMainId(2, 2)
    elseif arg1 == 23 then
        self:SetQuestVarByMainId(2, 3)
    elseif arg1 == 31 then
        self:SetQuestVarByMainId(3, 1)
    elseif arg1 == 32 then
        self:SetQuestVarByMainId(3, 2)
    elseif arg1 == 33 then
        self:SetQuestVarByMainId(3, 3)
    end
end

function Quest73503:OnSubStart7350303(arg1)
    print("OnSubStart7350303")
end

function Quest73503:OnSubFinish7350303(arg1)
    print("OnSubFinish7350303")
end

function Quest73503:OnSubStart7350305(arg1)
    print("OnSubStart7350305")
end

function Quest73503:OnSubFinish7350305(arg1)
    print("OnSubFinish7350305")
end

function Quest73503:OnSubStart7350306(arg1)
    print("OnSubStart7350306")
end

function Quest73503:OnSubFinish7350306(arg1)
    print("OnSubFinish7350306")
end

function Quest73503:OnSubStart7350307(arg1)
    print("OnSubStart7350307")
end

function Quest73503:OnSubFinish7350307(arg1)
    print("OnSubFinish7350307")
end

function Quest73503:OnSubStart7350301(arg1)
    print("OnSubStart7350301")
    self:CreateQuestNpc(arg1, npcs.Npc20847Data.id, 1)
end

function Quest73503:OnSubFinish7350301(arg1)
    print("OnSubFinish7350301")
    self:SafeDestroyQuestNpc(npcs.Npc20847Data.alias, 3)
end

function Quest73503:OnSubStart7350308(arg1)
    print("OnSubStart7350308")
end

function Quest73503:OnSubFinish7350308(arg1)
    print("OnSubFinish7350308")
end

function Quest73503:OnSubStart7350309(arg1)
    print("OnSubStart7350309")
end

function Quest73503:OnSubFinish7350309(arg1)
    print("OnSubFinish7350309")
end

function Quest73503:OnSubStart7350310(arg1)
    print("OnSubStart7350310")
end

function Quest73503:OnSubFinish7350310(arg1)
    print("OnSubFinish7350310")
end

function Quest73503:OnSubStart7350302(arg1)
    print("OnSubStart7350302")
    self:CreateQuestNpc(arg1, npcs.Npc20850Data.id, 1)
    self:NpcCreateWithTriggerBlack(npcs.Npc20847Data.id, 7350302, 2)
end

function Quest73503:OnSubFinish7350302(arg1)
    print("OnSubFinish7350302")
    self:SafeDestroyQuestNpc(npcs.Npc20847Data.alias, 3)
end

function Quest73503:OnSubStart7350311(arg1)
    print("OnSubStart7350311")
end

function Quest73503:OnSubFinish7350311(arg1)
    print("OnSubFinish7350311")
end

function Quest73503:OnSubStart7350312(arg1)
    print("OnSubStart7350312")
end

function Quest73503:OnSubFinish7350312(arg1)
    print("OnSubFinish7350312")
end

function Quest73503:OnSubStart7350313(arg1)
    print("OnSubStart7350313")
end

function Quest73503:OnSubFinish7350313(arg1)
    print("OnSubFinish7350313")
end

function Quest73503:OnSubStart7350304(arg1)
    print("OnSubStart7350304")
    self:CreateQuestNpc(arg1, npcs.Npc20851Data.id, 2)
    self:NpcCreateWithTriggerBlack(npcs.Npc20847Data.id, 7350304, 3)
end

function Quest73503:OnSubFinish7350304(arg1)
    print("OnSubFinish7350304")
    self:SafeDestroyQuestNpc(npcs.Npc20850Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20851Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20847Data.alias, 3)
end

return Quest73503
