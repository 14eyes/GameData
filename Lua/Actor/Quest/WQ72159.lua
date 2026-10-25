require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72159 = class("Quest72159", QuestActorProxy)
Quest72159.defaultAlias = "Quest72159"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72159:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72159:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7215901"] = self.OnSubStart7215901,
        ["7215902"] = self.OnSubStart7215902,
        ["7215906"] = self.OnSubStart7215906,
        ["7215907"] = self.OnSubStart7215907,
        ["7215903"] = self.OnSubStart7215903,
        ["7215904"] = self.OnSubStart7215904,
        ["7215905"] = self.OnSubStart7215905
    }
end

function Quest72159:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7215901"] = self.OnSubFinish7215901,
        ["7215902"] = self.OnSubFinish7215902,
        ["7215906"] = self.OnSubFinish7215906,
        ["7215907"] = self.OnSubFinish7215907,
        ["7215903"] = self.OnSubFinish7215903,
        ["7215904"] = self.OnSubFinish7215904,
        ["7215905"] = self.OnSubFinish7215905
    }
end

function Quest72159:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7215901"] = self.OnSubFailed7215901,
        ["7215902"] = self.OnSubFailed7215902,
        ["7215906"] = self.OnSubFailed7215906,
        ["7215907"] = self.OnSubFailed7215907,
        ["7215903"] = self.OnSubFailed7215903,
        ["7215904"] = self.OnSubFailed7215904,
        ["7215905"] = self.OnSubFailed7215905
    }
end

function Quest72159:Start()
    print("Start")
end

function Quest72159:OnDestroy()
    print("OnDestroy")
end

function Quest72159:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72159:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72159:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72159:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72159:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72159:OnSubStart7215901(arg1)
    print("OnSubStart7215901")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
end

function Quest72159:OnSubFinish7215901(arg1)
    print("OnSubFinish7215901")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72159:OnSubFailed7215901(arg1)
    print("OnSubFailed7215901")
end

function Quest72159:OnSubStart7215902(arg1)
    print("OnSubStart7215902")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3174Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3174Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72159:OnSubFinish7215902(arg1)
    print("OnSubFinish7215902")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3174Data.alias)
end

function Quest72159:OnSubFailed7215902(arg1)
    print("OnSubFailed7215902")
end

function Quest72159:OnSubStart7215906(arg1)
    print("OnSubStart7215906")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
end

function Quest72159:OnSubFinish7215906(arg1)
    print("OnSubFinish7215906")
end

function Quest72159:OnSubFailed7215906(arg1)
    print("OnSubFailed7215906")
end

function Quest72159:OnSubStart7215907(arg1)
    print("OnSubStart7215907")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
end

function Quest72159:OnSubFinish7215907(arg1)
    print("OnSubFinish7215907")
end

function Quest72159:OnSubFailed7215907(arg1)
    print("OnSubFailed7215907")
end

function Quest72159:OnSubStart7215903(arg1)
    print("OnSubStart7215903")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    if 0 <= self:GetLevelTime() then
        if self:GetLevelTime() <= 2 then
            self:FinishQuestID(false, 7215907)
            print("\230\136\145\231\142\176\229\156\168\229\174\140\230\136\144\231\154\132\228\187\187\229\138\161\230\152\175:7215907")
        end
    else
        self:FinishQuestID(false, 7215906)
        print("\230\136\145\231\142\176\229\156\168\229\174\140\230\136\144\231\154\132\228\187\187\229\138\161\230\152\175:7215906")
    end
end

function Quest72159:OnSubFinish7215903(arg1)
    print("OnSubFinish7215903")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72159:OnSubFailed7215903(arg1)
    print("OnSubFailed7215903")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72159:OnSubStart7215904(arg1)
    print("OnSubStart7215904")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3174Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3174Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72159:OnSubFinish7215904(arg1)
    print("OnSubFinish7215904")
end

function Quest72159:OnSubFailed7215904(arg1)
    print("OnSubFailed7215904")
end

function Quest72159:OnSubStart7215905(arg1)
    print("OnSubStart7215905")
    self:NotifyTo(npcs.Npc3164Data.alias, 1, true)
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3174Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc3174Data.alias):DoFreeStyle(1, true, nil, true, true, false)
    end)
end

function Quest72159:OnSubFinish7215905(arg1)
    print("OnSubFinish7215905")
end

function Quest72159:OnSubFailed7215905(arg1)
    print("OnSubFailed7215905")
end

return Quest72159
