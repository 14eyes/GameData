require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71042 = class("Quest71042", QuestActorProxy)
Quest71042.defaultAlias = "Quest71042"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71042:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7104201"] = self.OnSubStart7104201,
        ["7104229"] = self.OnSubStart7104229,
        ["7104202"] = self.OnSubStart7104202,
        ["7104203"] = self.OnSubStart7104203,
        ["7104234"] = self.OnSubStart7104234,
        ["7104204"] = self.OnSubStart7104204,
        ["7104205"] = self.OnSubStart7104205,
        ["7104206"] = self.OnSubStart7104206,
        ["7104207"] = self.OnSubStart7104207,
        ["7104208"] = self.OnSubStart7104208,
        ["7104209"] = self.OnSubStart7104209,
        ["7104230"] = self.OnSubStart7104230,
        ["7104210"] = self.OnSubStart7104210,
        ["7104231"] = self.OnSubStart7104231,
        ["7104232"] = self.OnSubStart7104232,
        ["7104211"] = self.OnSubStart7104211,
        ["7104212"] = self.OnSubStart7104212,
        ["7104213"] = self.OnSubStart7104213,
        ["7104215"] = self.OnSubStart7104215,
        ["7104216"] = self.OnSubStart7104216,
        ["7104217"] = self.OnSubStart7104217,
        ["7104218"] = self.OnSubStart7104218,
        ["7104219"] = self.OnSubStart7104219,
        ["7104235"] = self.OnSubStart7104235,
        ["7104220"] = self.OnSubStart7104220,
        ["7104221"] = self.OnSubStart7104221,
        ["7104222"] = self.OnSubStart7104222,
        ["7104223"] = self.OnSubStart7104223,
        ["7104224"] = self.OnSubStart7104224,
        ["7104225"] = self.OnSubStart7104225,
        ["7104226"] = self.OnSubStart7104226,
        ["7104236"] = self.OnSubStart7104236,
        ["7104227"] = self.OnSubStart7104227,
        ["7104228"] = self.OnSubStart7104228,
        ["7104233"] = self.OnSubStart7104233
    }
end

function Quest71042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7104201"] = self.OnSubFinish7104201,
        ["7104229"] = self.OnSubFinish7104229,
        ["7104202"] = self.OnSubFinish7104202,
        ["7104203"] = self.OnSubFinish7104203,
        ["7104234"] = self.OnSubFinish7104234,
        ["7104204"] = self.OnSubFinish7104204,
        ["7104205"] = self.OnSubFinish7104205,
        ["7104206"] = self.OnSubFinish7104206,
        ["7104207"] = self.OnSubFinish7104207,
        ["7104208"] = self.OnSubFinish7104208,
        ["7104209"] = self.OnSubFinish7104209,
        ["7104230"] = self.OnSubFinish7104230,
        ["7104210"] = self.OnSubFinish7104210,
        ["7104231"] = self.OnSubFinish7104231,
        ["7104232"] = self.OnSubFinish7104232,
        ["7104211"] = self.OnSubFinish7104211,
        ["7104212"] = self.OnSubFinish7104212,
        ["7104213"] = self.OnSubFinish7104213,
        ["7104215"] = self.OnSubFinish7104215,
        ["7104216"] = self.OnSubFinish7104216,
        ["7104217"] = self.OnSubFinish7104217,
        ["7104218"] = self.OnSubFinish7104218,
        ["7104219"] = self.OnSubFinish7104219,
        ["7104235"] = self.OnSubFinish7104235,
        ["7104220"] = self.OnSubFinish7104220,
        ["7104221"] = self.OnSubFinish7104221,
        ["7104222"] = self.OnSubFinish7104222,
        ["7104223"] = self.OnSubFinish7104223,
        ["7104224"] = self.OnSubFinish7104224,
        ["7104225"] = self.OnSubFinish7104225,
        ["7104226"] = self.OnSubFinish7104226,
        ["7104236"] = self.OnSubFinish7104236,
        ["7104227"] = self.OnSubFinish7104227,
        ["7104228"] = self.OnSubFinish7104228,
        ["7104233"] = self.OnSubFinish7104233
    }
end

function Quest71042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71042:Start()
    print("Start")
end

function Quest71042:OnDestroy()
    print("OnDestroy")
end

function Quest71042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71042:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71042:NpcCreateWithBlackscreenInteractionDelay(arg1, arg2, arg3, arg4)
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, arg2, arg3)
            arg1_2:RequestInteraction(arg4)
        end)
    end)
end

function Quest71042:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest71042:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71042:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71042:OnEvent(arg1)
    print("OnEvent")
    self.FinishQuestID(false, 7104214)
end

function Quest71042:OnSubStart7104201(arg1)
    print("OnSubStart7104201")
end

function Quest71042:OnSubFinish7104201(arg1)
    print("OnSubFinish7104201")
end

function Quest71042:OnSubStart7104229(arg1)
    print("OnSubStart7104229")
end

function Quest71042:OnSubFinish7104229(arg1)
    print("OnSubFinish7104229")
end

function Quest71042:OnSubStart7104202(arg1)
    print("OnSubStart7104202")
end

function Quest71042:OnSubFinish7104202(arg1)
    print("OnSubFinish7104202")
end

function Quest71042:OnSubStart7104203(arg1)
    print("OnSubStart7104203")
end

function Quest71042:OnSubFinish7104203(arg1)
    print("OnSubFinish7104203")
end

function Quest71042:OnSubStart7104234(arg1)
    print("OnSubStart7104234")
end

function Quest71042:OnSubFinish7104234(arg1)
    print("OnSubFinish7104234")
end

function Quest71042:OnSubStart7104204(arg1)
    print("OnSubStart7104204")
end

function Quest71042:OnSubFinish7104204(arg1)
    print("OnSubFinish7104204")
end

function Quest71042:OnSubStart7104205(arg1)
    print("OnSubStart7104205")
end

function Quest71042:OnSubFinish7104205(arg1)
    print("OnSubFinish7104205")
end

function Quest71042:OnSubStart7104206(arg1)
    print("OnSubStart7104206")
    self:CreateQuestNpc(arg1, npcs.Npc2617Data.id, 1)
end

function Quest71042:OnSubFinish7104206(arg1)
    print("OnSubFinish7104206")
end

function Quest71042:OnSubStart7104207(arg1)
    print("OnSubStart7104207")
end

function Quest71042:OnSubFinish7104207(arg1)
    print("OnSubFinish7104207")
end

function Quest71042:OnSubStart7104208(arg1)
    print("OnSubStart7104208")
end

function Quest71042:OnSubFinish7104208(arg1)
    print("OnSubFinish7104208")
end

function Quest71042:OnSubStart7104209(arg1)
    print("OnSubStart7104209")
    self:RequestInteractionForceAlias("2617")
end

function Quest71042:OnSubFinish7104209(arg1)
    print("OnSubFinish7104209")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:NpcDestroy(npcs.Npc20523Data.alias, 6)
    end, nil, nil, "", false, true)
end

function Quest71042:OnSubStart7104230(arg1)
    print("OnSubStart7104230")
end

function Quest71042:OnSubFinish7104230(arg1)
    print("OnSubFinish7104230")
end

function Quest71042:OnSubStart7104210(arg1)
    print("OnSubStart7104210")
end

function Quest71042:OnSubFinish7104210(arg1)
    print("OnSubFinish7104210")
end

function Quest71042:OnSubStart7104231(arg1)
    print("OnSubStart7104231")
end

function Quest71042:OnSubFinish7104231(arg1)
    print("OnSubFinish7104231")
end

function Quest71042:OnSubStart7104232(arg1)
    print("OnSubStart7104232")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20523Data.id, 1, npcs.Npc20523Data.alias)
    self:TransmitPlayerById(arg1, 3)
end

function Quest71042:OnSubFinish7104232(arg1)
    print("OnSubFinish7104232")
end

function Quest71042:OnSubStart7104211(arg1)
    print("OnSubStart7104211")
end

function Quest71042:OnSubFinish7104211(arg1)
    print("OnSubFinish7104211")
end

function Quest71042:OnSubStart7104212(arg1)
    print("OnSubStart7104212")
    self:GetQuestNpcActor(npcs.Npc20523Data.alias):DoFreeStyle(1200, true, nil, true, true, false)
    self:RequestInteraction(npcs.Npc20523Data.alias)
end

function Quest71042:OnSubFinish7104212(arg1)
    print("OnSubFinish7104212")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20523Data.alias)
end

function Quest71042:OnSubStart7104213(arg1)
    print("OnSubStart7104213")
end

function Quest71042:OnSubFinish7104213(arg1)
    print("OnSubFinish7104213")
end

function Quest71042:OnSubStart7104215(arg1)
    print("OnSubStart7104215")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20523Data.id, 1, npcs.Npc20523Data.alias)
    self:TransmitPlayerById(arg1, datas.TransmitPoint2.point_id)
end

function Quest71042:OnSubFinish7104215(arg1)
    print("OnSubFinish7104215")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20523Data.alias)
end

function Quest71042:OnSubStart7104216(arg1)
    print("OnSubStart7104216")
end

function Quest71042:OnSubFinish7104216(arg1)
    print("OnSubFinish7104216")
end

function Quest71042:OnSubStart7104217(arg1)
    print("OnSubStart7104217")
end

function Quest71042:OnSubFinish7104217(arg1)
    print("OnSubFinish7104217")
end

function Quest71042:OnSubStart7104218(arg1)
    print("OnSubStart7104218")
end

function Quest71042:OnSubFinish7104218(arg1)
    print("OnSubFinish7104218")
end

function Quest71042:OnSubStart7104219(arg1)
    print("OnSubStart7104219")
end

function Quest71042:OnSubFinish7104219(arg1)
    print("OnSubFinish7104219")
end

function Quest71042:OnSubStart7104235(arg1)
    print("OnSubStart7104235")
end

function Quest71042:OnSubFinish7104235(arg1)
    print("OnSubFinish7104235")
end

function Quest71042:OnSubStart7104220(arg1)
    print("OnSubStart7104220")
    self:PlayCutsceneIndex("7104202", function(arg1)
        actorUtils.FinishQuestID(false, 7104220)
    end, nil, nil, true)
end

function Quest71042:OnSubFinish7104220(arg1)
    print("OnSubFinish7104220")
end

function Quest71042:OnSubStart7104221(arg1)
    print("OnSubStart7104221")
end

function Quest71042:OnSubFinish7104221(arg1)
    print("OnSubFinish7104221")
end

function Quest71042:OnSubStart7104222(arg1)
    print("OnSubStart7104222")
    self:TransmitPlayerById(arg1, 4, nil, function(arg1_2)
        arg1_2:LevelLoadFinishSafeCall(function(arg1_2)
            arg1_2:NpcCreateWithBlackscreenInteractionDelay(arg1, npcs.Npc20523Data.id, 1, npcs.Npc20523Data.alias)
        end)
    end)
end

function Quest71042:OnSubFinish7104222(arg1)
    print("OnSubFinish7104222")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20523Data.alias)
end

function Quest71042:OnSubStart7104223(arg1)
    print("OnSubStart7104223")
end

function Quest71042:OnSubFinish7104223(arg1)
    print("OnSubFinish7104223")
end

function Quest71042:OnSubStart7104224(arg1)
    print("OnSubStart7104224")
end

function Quest71042:OnSubFinish7104224(arg1)
    print("OnSubFinish7104224")
end

function Quest71042:OnSubStart7104225(arg1)
    print("OnSubStart7104225")
end

function Quest71042:OnSubFinish7104225(arg1)
    print("OnSubFinish7104225")
end

function Quest71042:OnSubStart7104226(arg1)
    print("OnSubStart7104226")
end

function Quest71042:OnSubFinish7104226(arg1)
    print("OnSubFinish7104226")
end

function Quest71042:OnSubStart7104236(arg1)
    print("OnSubStart7104236")
end

function Quest71042:OnSubFinish7104236(arg1)
    print("OnSubFinish7104236")
end

function Quest71042:OnSubStart7104227(arg1)
    print("OnSubStart7104227")
    self:PlayCutsceneIndex("7104203", function(arg1)
        actorUtils.FinishQuestID(false, 7104227)
    end, nil, nil, false)
end

function Quest71042:OnSubFinish7104227(arg1)
    print("OnSubFinish7104227")
end

function Quest71042:OnSubStart7104228(arg1)
    print("OnSubStart7104228")
    self:TransmitPlayerById(arg1, 3)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20523Data.id, 1, npcs.Npc20523Data.alias)
end

function Quest71042:OnSubFinish7104228(arg1)
    print("OnSubFinish7104228")
end

function Quest71042:OnSubStart7104233(arg1)
    print("OnSubStart7104233")
end

function Quest71042:OnSubFinish7104233(arg1)
    print("OnSubFinish7104233")
end

return Quest71042
