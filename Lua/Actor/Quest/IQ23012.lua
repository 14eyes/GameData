require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23012 = class("Quest23012", QuestActorProxy)
Quest23012.defaultAlias = "Quest23012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2301201"] = self.OnSubStart2301201,
        ["2301209"] = self.OnSubStart2301209,
        ["2301206"] = self.OnSubStart2301206,
        ["2301207"] = self.OnSubStart2301207,
        ["2301208"] = self.OnSubStart2301208,
        ["2301202"] = self.OnSubStart2301202,
        ["2301203"] = self.OnSubStart2301203,
        ["2301204"] = self.OnSubStart2301204,
        ["2301205"] = self.OnSubStart2301205
    }
end

function Quest23012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2301201"] = self.OnSubFinish2301201,
        ["2301209"] = self.OnSubFinish2301209,
        ["2301206"] = self.OnSubFinish2301206,
        ["2301207"] = self.OnSubFinish2301207,
        ["2301208"] = self.OnSubFinish2301208,
        ["2301202"] = self.OnSubFinish2301202,
        ["2301203"] = self.OnSubFinish2301203,
        ["2301204"] = self.OnSubFinish2301204,
        ["2301205"] = self.OnSubFinish2301205
    }
end

function Quest23012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23012:Start()
    print("Start")
end

function Quest23012:OnDestroy()
    print("OnDestroy")
end

function Quest23012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23012:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4136Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12679Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12719Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12720Data.alias, 3)
end

function Quest23012:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23012:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:SetQuestVarByMainId(2, 1)
    elseif arg1 == 2 then
        if self:GetQuestVar(2301205, 1) == 1 then
            self:CreateQuestNpcById(2301205, npcs.Npc12679Data.id, 1)
        else
            if self:GetQuestVar(2301205, 1) == 2 then
                self:CreateQuestNpcById(2301205, npcs.Npc12719Data.id, 2)
            else
                if self:GetQuestVar(2301205, 1) == 3 then
                    self:CreateQuestNpcById(2301205, npcs.Npc12720Data.id, 3)
                end
            end
        end
    end
end

function Quest23012:OnSubStart2301201(arg1)
    print("OnSubStart2301201")
    self:CreateQuestNpc(arg1, npcs.Npc4136Data.id, 1)
end

function Quest23012:OnSubFinish2301201(arg1)
    print("OnSubFinish2301201")
end

function Quest23012:OnSubStart2301209(arg1)
    print("OnSubStart2301209")
end

function Quest23012:OnSubFinish2301209(arg1)
    print("OnSubFinish2301209")
end

function Quest23012:OnSubStart2301206(arg1)
    print("OnSubStart2301206")
end

function Quest23012:OnSubFinish2301206(arg1)
    print("OnSubFinish2301206")
end

function Quest23012:OnSubStart2301207(arg1)
    print("OnSubStart2301207")
end

function Quest23012:OnSubFinish2301207(arg1)
    print("OnSubFinish2301207")
end

function Quest23012:OnSubStart2301208(arg1)
    print("OnSubStart2301208")
end

function Quest23012:OnSubFinish2301208(arg1)
    print("OnSubFinish2301208")
end

function Quest23012:OnSubStart2301202(arg1)
    print("OnSubStart2301202")
    self:CallDelay(2, function(arg1)
        actorMgr:GetActor(npcs.Npc12679Data.alias):DoFreeStyle(1, true, nil, true, true, true)
    end)

    self:SetQuestVarByMainId(2, 0)
end

function Quest23012:OnSubFinish2301202(arg1)
    print("OnSubFinish2301202")
end

function Quest23012:OnSubStart2301203(arg1)
    print("OnSubStart2301203")
    self:CallDelay(2, function(arg1)
        actorMgr:GetActor(npcs.Npc12719Data.alias):DoFreeStyle(1, true, nil, true, true, true)
    end)

    self:SetQuestVarByMainId(2, 0)
end

function Quest23012:OnSubFinish2301203(arg1)
    print("OnSubFinish2301203")
end

function Quest23012:OnSubStart2301204(arg1)
    print("OnSubStart2301204")
    self:CallDelay(2, function(arg1)
        actorMgr:GetActor(npcs.Npc12720Data.alias):DoFreeStyle(1, true, nil, true, true, true)
    end)

    self:SetQuestVarByMainId(2, 0)
end

function Quest23012:OnSubFinish2301204(arg1)
    print("OnSubFinish2301204")
end

function Quest23012:OnSubStart2301205(arg1)
    print("OnSubStart2301205")
end

function Quest23012:OnSubFinish2301205(arg1)
    print("OnSubFinish2301205")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4136Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc12679Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12719Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12720Data.alias, 3)
end

return Quest23012
