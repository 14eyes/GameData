require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72122 = class("Quest72122", QuestActorProxy)
Quest72122.defaultAlias = "Quest72122"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72122:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72122:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7212201"] = self.OnSubStart7212201,
        ["7212202"] = self.OnSubStart7212202,
        ["7212203"] = self.OnSubStart7212203,
        ["7212204"] = self.OnSubStart7212204,
        ["7212223"] = self.OnSubStart7212223,
        ["7212218"] = self.OnSubStart7212218,
        ["7212219"] = self.OnSubStart7212219,
        ["7212221"] = self.OnSubStart7212221,
        ["7212225"] = self.OnSubStart7212225,
        ["7212224"] = self.OnSubStart7212224,
        ["7212205"] = self.OnSubStart7212205,
        ["7212222"] = self.OnSubStart7212222,
        ["7212206"] = self.OnSubStart7212206,
        ["7212207"] = self.OnSubStart7212207,
        ["7212208"] = self.OnSubStart7212208,
        ["7212209"] = self.OnSubStart7212209,
        ["7212210"] = self.OnSubStart7212210,
        ["7212213"] = self.OnSubStart7212213,
        ["7212214"] = self.OnSubStart7212214,
        ["7212215"] = self.OnSubStart7212215,
        ["7212216"] = self.OnSubStart7212216,
        ["7212211"] = self.OnSubStart7212211,
        ["7212212"] = self.OnSubStart7212212,
        ["7212217"] = self.OnSubStart7212217
    }
end

function Quest72122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7212201"] = self.OnSubFinish7212201,
        ["7212202"] = self.OnSubFinish7212202,
        ["7212203"] = self.OnSubFinish7212203,
        ["7212204"] = self.OnSubFinish7212204,
        ["7212223"] = self.OnSubFinish7212223,
        ["7212218"] = self.OnSubFinish7212218,
        ["7212219"] = self.OnSubFinish7212219,
        ["7212221"] = self.OnSubFinish7212221,
        ["7212225"] = self.OnSubFinish7212225,
        ["7212224"] = self.OnSubFinish7212224,
        ["7212205"] = self.OnSubFinish7212205,
        ["7212222"] = self.OnSubFinish7212222,
        ["7212206"] = self.OnSubFinish7212206,
        ["7212207"] = self.OnSubFinish7212207,
        ["7212208"] = self.OnSubFinish7212208,
        ["7212209"] = self.OnSubFinish7212209,
        ["7212210"] = self.OnSubFinish7212210,
        ["7212213"] = self.OnSubFinish7212213,
        ["7212214"] = self.OnSubFinish7212214,
        ["7212215"] = self.OnSubFinish7212215,
        ["7212216"] = self.OnSubFinish7212216,
        ["7212211"] = self.OnSubFinish7212211,
        ["7212212"] = self.OnSubFinish7212212,
        ["7212217"] = self.OnSubFinish7212217
    }
end

function Quest72122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7212201"] = self.OnSubFailed7212201,
        ["7212202"] = self.OnSubFailed7212202,
        ["7212203"] = self.OnSubFailed7212203,
        ["7212204"] = self.OnSubFailed7212204,
        ["7212223"] = self.OnSubFailed7212223,
        ["7212218"] = self.OnSubFailed7212218,
        ["7212219"] = self.OnSubFailed7212219,
        ["7212221"] = self.OnSubFailed7212221,
        ["7212225"] = self.OnSubFailed7212225,
        ["7212224"] = self.OnSubFailed7212224,
        ["7212205"] = self.OnSubFailed7212205,
        ["7212222"] = self.OnSubFailed7212222,
        ["7212206"] = self.OnSubFailed7212206,
        ["7212207"] = self.OnSubFailed7212207,
        ["7212208"] = self.OnSubFailed7212208,
        ["7212209"] = self.OnSubFailed7212209,
        ["7212210"] = self.OnSubFailed7212210,
        ["7212213"] = self.OnSubFailed7212213,
        ["7212214"] = self.OnSubFailed7212214,
        ["7212215"] = self.OnSubFailed7212215,
        ["7212216"] = self.OnSubFailed7212216,
        ["7212211"] = self.OnSubFailed7212211,
        ["7212212"] = self.OnSubFailed7212212,
        ["7212217"] = self.OnSubFailed7212217
    }
end

function Quest72122:Start()
    print("Start")
end

function Quest72122:OnDestroy()
    print("OnDestroy")
end

function Quest72122:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72122:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72122:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72122:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72122:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72122:OnSubStart7212201(arg1)
    print("OnSubStart7212201")
end

function Quest72122:OnSubFinish7212201(arg1)
    print("OnSubFinish7212201")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72122:OnSubFailed7212201(arg1)
    print("OnSubFailed7212201")
end

function Quest72122:OnSubStart7212202(arg1)
    print("OnSubStart7212202")
    self:CallDelay(0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72122:OnSubFinish7212202(arg1)
    print("OnSubFinish7212202")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc3162Data.alias, 3)
            arg1:NotifyTo(npcs.Npc3162Data.alias, 1, true)
        end, nil, nil, "", false, true)
    end)
end

function Quest72122:OnSubFailed7212202(arg1)
    print("OnSubFailed7212202")
end

function Quest72122:OnSubStart7212203(arg1)
    print("OnSubStart7212203")
    self:NotifyTo(npcs.Npc3162Data.alias, 1, true)
end

function Quest72122:OnSubFinish7212203(arg1)
    print("OnSubFinish7212203")
    self:ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72122:OnSubFailed7212203(arg1)
    print("OnSubFailed7212203")
end

function Quest72122:OnSubStart7212204(arg1)
    print("OnSubStart7212204")
    self:CallDelay(0.3, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72122:OnSubFinish7212204(arg1)
    print("OnSubFinish7212204")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Message_Q7212201", false, true)
end

function Quest72122:OnSubFailed7212204(arg1)
    print("OnSubFailed7212204")
end

function Quest72122:OnSubStart7212223(arg1)
    print("OnSubStart7212223")
end

function Quest72122:OnSubFinish7212223(arg1)
    print("OnSubFinish7212223")
end

function Quest72122:OnSubFailed7212223(arg1)
    print("OnSubFailed7212223")
end

function Quest72122:OnSubStart7212218(arg1)
    print("OnSubStart7212218")
end

function Quest72122:OnSubFinish7212218(arg1)
    print("OnSubFinish7212218")
end

function Quest72122:OnSubFailed7212218(arg1)
    print("OnSubFailed7212218")
end

function Quest72122:OnSubStart7212219(arg1)
    print("OnSubStart7212219")
end

function Quest72122:OnSubFinish7212219(arg1)
    print("OnSubFinish7212219")
end

function Quest72122:OnSubFailed7212219(arg1)
    print("OnSubFailed7212219")
end

function Quest72122:OnSubStart7212221(arg1)
    print("OnSubStart7212221")
end

function Quest72122:OnSubFinish7212221(arg1)
    print("OnSubFinish7212221")
end

function Quest72122:OnSubFailed7212221(arg1)
    print("OnSubFailed7212221")
end

function Quest72122:OnSubStart7212225(arg1)
    print("OnSubStart7212225")
end

function Quest72122:OnSubFinish7212225(arg1)
    print("OnSubFinish7212225")
end

function Quest72122:OnSubFailed7212225(arg1)
    print("OnSubFailed7212225")
end

function Quest72122:OnSubStart7212224(arg1)
    print("OnSubStart7212224")
end

function Quest72122:OnSubFinish7212224(arg1)
    print("OnSubFinish7212224")
end

function Quest72122:OnSubFailed7212224(arg1)
    print("OnSubFailed7212224")
end

function Quest72122:OnSubStart7212205(arg1)
    print("OnSubStart7212205")
end

function Quest72122:OnSubFinish7212205(arg1)
    print("OnSubFinish7212205")
end

function Quest72122:OnSubFailed7212205(arg1)
    print("OnSubFailed7212205")
end

function Quest72122:OnSubStart7212222(arg1)
    print("OnSubStart7212222")
end

function Quest72122:OnSubFinish7212222(arg1)
    print("OnSubFinish7212222")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Message_Q7212202", false, true)
end

function Quest72122:OnSubFailed7212222(arg1)
    print("OnSubFailed7212222")
end

function Quest72122:OnSubStart7212206(arg1)
    print("OnSubStart7212206")
end

function Quest72122:OnSubFinish7212206(arg1)
    print("OnSubFinish7212206")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc3162Data.alias, 3)
            arg1:NotifyTo(npcs.Npc3162Data.alias, 1, true)
        end, nil, nil, "", false, true)
    end)
end

function Quest72122:OnSubFailed7212206(arg1)
    print("OnSubFailed7212206")
end

function Quest72122:OnSubStart7212207(arg1)
    print("OnSubStart7212207")
    self:NotifyTo(npcs.Npc3162Data.alias, 1, true)
end

function Quest72122:OnSubFinish7212207(arg1)
    print("OnSubFinish7212207")
    self:ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72122:OnSubFailed7212207(arg1)
    print("OnSubFailed7212207")
end

function Quest72122:OnSubStart7212208(arg1)
    print("OnSubStart7212208")
    self:CallDelay(0.3, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72122:OnSubFinish7212208(arg1)
    print("OnSubFinish7212208")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc3162Data.alias, 3)
            arg1:NotifyTo(npcs.Npc3162Data.alias, 1, true)
        end, nil, nil, "", false, true)
    end)
end

function Quest72122:OnSubFailed7212208(arg1)
    print("OnSubFailed7212208")
end

function Quest72122:OnSubStart7212209(arg1)
    print("OnSubStart7212209")
    self:NotifyTo(npcs.Npc3162Data.alias, 1, true)
end

function Quest72122:OnSubFinish7212209(arg1)
    print("OnSubFinish7212209")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72122:OnSubFailed7212209(arg1)
    print("OnSubFailed7212209")
end

function Quest72122:OnSubStart7212210(arg1)
    print("OnSubStart7212210")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72122:OnSubFinish7212210(arg1)
    print("OnSubFinish7212210")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc3162Data.alias, 3)
            arg1:NotifyTo(npcs.Npc3162Data.alias, 1, true)
        end, nil, nil, "", false, true)
    end)
end

function Quest72122:OnSubFailed7212210(arg1)
    print("OnSubFailed7212210")
end

function Quest72122:OnSubStart7212213(arg1)
    print("OnSubStart7212213")
    self:NotifyTo(npcs.Npc3162Data.alias, 1, true)
end

function Quest72122:OnSubFinish7212213(arg1)
    print("OnSubFinish7212213")
    self:ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72122:OnSubFailed7212213(arg1)
    print("OnSubFailed7212213")
end

function Quest72122:OnSubStart7212214(arg1)
    print("OnSubStart7212214")
    self:CallDelay(0.3, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72122:OnSubFinish7212214(arg1)
    print("OnSubFinish7212214")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc3162Data.alias, 3)
            arg1:NotifyTo(npcs.Npc3162Data.alias, 1, true)
        end, nil, nil, "", false, true)
    end)
end

function Quest72122:OnSubFailed7212214(arg1)
    print("OnSubFailed7212214")
end

function Quest72122:OnSubStart7212215(arg1)
    print("OnSubStart7212215")
    self:NotifyTo(npcs.Npc3162Data.alias, 1, true)
end

function Quest72122:OnSubFinish7212215(arg1)
    print("OnSubFinish7212215")
    self:PlayCutsceneIndex("7212215", nil, nil, nil, false)
end

function Quest72122:OnSubFailed7212215(arg1)
    print("OnSubFailed7212215")
end

function Quest72122:OnSubStart7212216(arg1)
    print("OnSubStart7212216")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72122:OnSubFinish7212216(arg1)
    print("OnSubFinish7212216")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc3162Data.alias, 3)
            arg1:NotifyTo(npcs.Npc3162Data.alias, 1, true)
        end, nil, nil, "", false, true)
    end)
end

function Quest72122:OnSubFailed7212216(arg1)
    print("OnSubFailed7212216")
end

function Quest72122:OnSubStart7212211(arg1)
    print("OnSubStart7212211")
    self:NotifyTo(npcs.Npc3162Data.alias, 1, true)
end

function Quest72122:OnSubFinish7212211(arg1)
    print("OnSubFinish7212211")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72122:OnSubFailed7212211(arg1)
    print("OnSubFailed7212211")
end

function Quest72122:OnSubStart7212212(arg1)
    print("OnSubStart7212212")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72122:OnSubFinish7212212(arg1)
    print("OnSubFinish7212212")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72122:OnSubFailed7212212(arg1)
    print("OnSubFailed7212212")
end

function Quest72122:OnSubStart7212217(arg1)
    print("OnSubStart7212217")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3185Data.id, 2)
    end)
end

function Quest72122:OnSubFinish7212217(arg1)
    print("OnSubFinish7212217")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3162Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3185Data.alias)
end

function Quest72122:OnSubFailed7212217(arg1)
    print("OnSubFailed7212217")
end

return Quest72122
