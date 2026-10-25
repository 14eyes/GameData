require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71012 = class("Quest71012", QuestActorProxy)
Quest71012.defaultAlias = "Quest71012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7101201"] = self.OnSubStart7101201,
        ["7101202"] = self.OnSubStart7101202,
        ["7101203"] = self.OnSubStart7101203,
        ["7101204"] = self.OnSubStart7101204,
        ["7101205"] = self.OnSubStart7101205,
        ["7101206"] = self.OnSubStart7101206,
        ["7101219"] = self.OnSubStart7101219,
        ["7101208"] = self.OnSubStart7101208,
        ["7101209"] = self.OnSubStart7101209,
        ["7101210"] = self.OnSubStart7101210,
        ["7101207"] = self.OnSubStart7101207,
        ["7101220"] = self.OnSubStart7101220,
        ["7101225"] = self.OnSubStart7101225,
        ["7101226"] = self.OnSubStart7101226,
        ["7101215"] = self.OnSubStart7101215,
        ["7101216"] = self.OnSubStart7101216,
        ["7101217"] = self.OnSubStart7101217,
        ["7101218"] = self.OnSubStart7101218,
        ["7101211"] = self.OnSubStart7101211,
        ["7101212"] = self.OnSubStart7101212,
        ["7101221"] = self.OnSubStart7101221,
        ["7101222"] = self.OnSubStart7101222,
        ["7101223"] = self.OnSubStart7101223,
        ["7101224"] = self.OnSubStart7101224,
        ["7101213"] = self.OnSubStart7101213,
        ["7101214"] = self.OnSubStart7101214,
        ["7101227"] = self.OnSubStart7101227
    }
end

function Quest71012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7101201"] = self.OnSubFinish7101201,
        ["7101202"] = self.OnSubFinish7101202,
        ["7101203"] = self.OnSubFinish7101203,
        ["7101204"] = self.OnSubFinish7101204,
        ["7101205"] = self.OnSubFinish7101205,
        ["7101206"] = self.OnSubFinish7101206,
        ["7101219"] = self.OnSubFinish7101219,
        ["7101208"] = self.OnSubFinish7101208,
        ["7101209"] = self.OnSubFinish7101209,
        ["7101210"] = self.OnSubFinish7101210,
        ["7101207"] = self.OnSubFinish7101207,
        ["7101220"] = self.OnSubFinish7101220,
        ["7101225"] = self.OnSubFinish7101225,
        ["7101226"] = self.OnSubFinish7101226,
        ["7101215"] = self.OnSubFinish7101215,
        ["7101216"] = self.OnSubFinish7101216,
        ["7101217"] = self.OnSubFinish7101217,
        ["7101218"] = self.OnSubFinish7101218,
        ["7101211"] = self.OnSubFinish7101211,
        ["7101212"] = self.OnSubFinish7101212,
        ["7101221"] = self.OnSubFinish7101221,
        ["7101222"] = self.OnSubFinish7101222,
        ["7101223"] = self.OnSubFinish7101223,
        ["7101224"] = self.OnSubFinish7101224,
        ["7101213"] = self.OnSubFinish7101213,
        ["7101214"] = self.OnSubFinish7101214,
        ["7101227"] = self.OnSubFinish7101227
    }
end

function Quest71012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7101201"] = self.OnSubFailed7101201,
        ["7101202"] = self.OnSubFailed7101202,
        ["7101203"] = self.OnSubFailed7101203,
        ["7101204"] = self.OnSubFailed7101204,
        ["7101205"] = self.OnSubFailed7101205,
        ["7101206"] = self.OnSubFailed7101206,
        ["7101219"] = self.OnSubFailed7101219,
        ["7101208"] = self.OnSubFailed7101208,
        ["7101209"] = self.OnSubFailed7101209,
        ["7101210"] = self.OnSubFailed7101210,
        ["7101207"] = self.OnSubFailed7101207,
        ["7101220"] = self.OnSubFailed7101220,
        ["7101225"] = self.OnSubFailed7101225,
        ["7101226"] = self.OnSubFailed7101226,
        ["7101215"] = self.OnSubFailed7101215,
        ["7101216"] = self.OnSubFailed7101216,
        ["7101217"] = self.OnSubFailed7101217,
        ["7101218"] = self.OnSubFailed7101218,
        ["7101211"] = self.OnSubFailed7101211,
        ["7101212"] = self.OnSubFailed7101212,
        ["7101221"] = self.OnSubFailed7101221,
        ["7101222"] = self.OnSubFailed7101222,
        ["7101223"] = self.OnSubFailed7101223,
        ["7101224"] = self.OnSubFailed7101224,
        ["7101213"] = self.OnSubFailed7101213,
        ["7101214"] = self.OnSubFailed7101214,
        ["7101227"] = self.OnSubFailed7101227
    }
end

function Quest71012:Start()
    print("Start")
end

function Quest71012:OnDestroy()
    print("OnDestroy")
end

function Quest71012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71012:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("dialogblack")
        self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q71012")
    end
end

function Quest71012:OnSubStart7101201(arg1)
    print("OnSubStart7101201")
end

function Quest71012:OnSubFinish7101201(arg1)
    print("OnSubFinish7101201")
end

function Quest71012:OnSubFailed7101201(arg1)
    print("OnSubFailed7101201")
end

function Quest71012:OnSubStart7101202(arg1)
    print("OnSubStart7101202")
end

function Quest71012:OnSubFinish7101202(arg1)
    print("OnSubFinish7101202")
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "")
end

function Quest71012:OnSubFailed7101202(arg1)
    print("OnSubFailed7101202")
end

function Quest71012:OnSubStart7101203(arg1)
    print("OnSubStart7101203")
end

function Quest71012:OnSubFinish7101203(arg1)
    print("OnSubFinish7101203")
end

function Quest71012:OnSubFailed7101203(arg1)
    print("OnSubFailed7101203")
end

function Quest71012:OnSubStart7101204(arg1)
    print("OnSubStart7101204")
end

function Quest71012:OnSubFinish7101204(arg1)
    print("OnSubFinish7101204")
end

function Quest71012:OnSubFailed7101204(arg1)
    print("OnSubFailed7101204")
end

function Quest71012:OnSubStart7101205(arg1)
    print("OnSubStart7101205")
end

function Quest71012:OnSubFinish7101205(arg1)
    print("OnSubFinish7101205")
end

function Quest71012:OnSubFailed7101205(arg1)
    print("OnSubFailed7101205")
end

function Quest71012:OnSubStart7101206(arg1)
    print("OnSubStart7101206")
end

function Quest71012:OnSubFinish7101206(arg1)
    print("OnSubFinish7101206")
end

function Quest71012:OnSubFailed7101206(arg1)
    print("OnSubFailed7101206")
end

function Quest71012:OnSubStart7101219(arg1)
    print("OnSubStart7101219")
end

function Quest71012:OnSubFinish7101219(arg1)
    print("OnSubFinish7101219")
end

function Quest71012:OnSubFailed7101219(arg1)
    print("OnSubFailed7101219")
end

function Quest71012:OnSubStart7101208(arg1)
    print("OnSubStart7101208")
end

function Quest71012:OnSubFinish7101208(arg1)
    print("OnSubFinish7101208")
    self:PlayCutsceneIndex("7101208", nil, nil, nil, false)
end

function Quest71012:OnSubFailed7101208(arg1)
    print("OnSubFailed7101208")
end

function Quest71012:OnSubStart7101209(arg1)
    print("OnSubStart7101209")
    self:CreateQuestNpc(arg1, npcs.Npc20127Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc20127Data.alias):DoFreeStyle(1190, false)
    self:CreateSpeechBubbleTask(npcs.Npc20127Data.id, 710121000, 2, true, 0, 0)
end

function Quest71012:OnSubFinish7101209(arg1)
    print("OnSubFinish7101209")
end

function Quest71012:OnSubFailed7101209(arg1)
    print("OnSubFailed7101209")
end

function Quest71012:OnSubStart7101210(arg1)
    print("OnSubStart7101210")
end

function Quest71012:OnSubFinish7101210(arg1)
    print("OnSubFinish7101210")
    self:ClearSpeechBubbleTask()
end

function Quest71012:OnSubFailed7101210(arg1)
    print("OnSubFailed7101210")
end

function Quest71012:OnSubStart7101207(arg1)
    print("OnSubStart7101207")
end

function Quest71012:OnSubFinish7101207(arg1)
    print("OnSubFinish7101207")
end

function Quest71012:OnSubFailed7101207(arg1)
    print("OnSubFailed7101207")
end

function Quest71012:OnSubStart7101220(arg1)
    print("OnSubStart7101220")
end

function Quest71012:OnSubFinish7101220(arg1)
    print("OnSubFinish7101220")
end

function Quest71012:OnSubFailed7101220(arg1)
    print("OnSubFailed7101220")
end

function Quest71012:OnSubStart7101225(arg1)
    print("OnSubStart7101225")
end

function Quest71012:OnSubFinish7101225(arg1)
    print("OnSubFinish7101225")
end

function Quest71012:OnSubFailed7101225(arg1)
    print("OnSubFailed7101225")
end

function Quest71012:OnSubStart7101226(arg1)
    print("OnSubStart7101226")
end

function Quest71012:OnSubFinish7101226(arg1)
    print("OnSubFinish7101226")
end

function Quest71012:OnSubFailed7101226(arg1)
    print("OnSubFailed7101226")
end

function Quest71012:OnSubStart7101215(arg1)
    print("OnSubStart7101215")
end

function Quest71012:OnSubFinish7101215(arg1)
    print("OnSubFinish7101215")
end

function Quest71012:OnSubFailed7101215(arg1)
    print("OnSubFailed7101215")
end

function Quest71012:OnSubStart7101216(arg1)
    print("OnSubStart7101216")
end

function Quest71012:OnSubFinish7101216(arg1)
    print("OnSubFinish7101216")
end

function Quest71012:OnSubFailed7101216(arg1)
    print("OnSubFailed7101216")
end

function Quest71012:OnSubStart7101217(arg1)
    print("OnSubStart7101217")
end

function Quest71012:OnSubFinish7101217(arg1)
    print("OnSubFinish7101217")
end

function Quest71012:OnSubFailed7101217(arg1)
    print("OnSubFailed7101217")
end

function Quest71012:OnSubStart7101218(arg1)
    print("OnSubStart7101218")
end

function Quest71012:OnSubFinish7101218(arg1)
    print("OnSubFinish7101218")
    self:GetQuestNpcActor(npcs.Npc20127Data.alias):DoFreeStyle(1070, true)
end

function Quest71012:OnSubFailed7101218(arg1)
    print("OnSubFailed7101218")
end

function Quest71012:OnSubStart7101211(arg1)
    print("OnSubStart7101211")
end

function Quest71012:OnSubFinish7101211(arg1)
    print("OnSubFinish7101211")
end

function Quest71012:OnSubFailed7101211(arg1)
    print("OnSubFailed7101211")
end

function Quest71012:OnSubStart7101212(arg1)
    print("OnSubStart7101212")
end

function Quest71012:OnSubFinish7101212(arg1)
    print("OnSubFinish7101212")
end

function Quest71012:OnSubFailed7101212(arg1)
    print("OnSubFailed7101212")
end

function Quest71012:OnSubStart7101221(arg1)
    print("OnSubStart7101221")
end

function Quest71012:OnSubFinish7101221(arg1)
    print("OnSubFinish7101221")
end

function Quest71012:OnSubFailed7101221(arg1)
    print("OnSubFailed7101221")
end

function Quest71012:OnSubStart7101222(arg1)
    print("OnSubStart7101222")
end

function Quest71012:OnSubFinish7101222(arg1)
    print("OnSubFinish7101222")
end

function Quest71012:OnSubFailed7101222(arg1)
    print("OnSubFailed7101222")
end

function Quest71012:OnSubStart7101223(arg1)
    print("OnSubStart7101223")
    self:GetQuestNpcActor(npcs.Npc20127Data.alias):DoFreeStyle(4190, true)
    self:CreateSpeechBubbleTask(npcs.Npc20127Data.id, 710122300, 30, true, 1, 1)
end

function Quest71012:OnSubFinish7101223(arg1)
    print("OnSubFinish7101223")
end

function Quest71012:OnSubFailed7101223(arg1)
    print("OnSubFailed7101223")
end

function Quest71012:OnSubStart7101224(arg1)
    print("OnSubStart7101224")
    self:CreateSpeechBubbleTask(npcs.Npc20127Data.id, 710122400, 2, true, 0, 0)
    self:GetQuestNpcActor(npcs.Npc20127Data.alias):DoFreeStyle(1200, true)
end

function Quest71012:OnSubFinish7101224(arg1)
    print("OnSubFinish7101224")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc20127Data.alias, 3)
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "")
end

function Quest71012:OnSubFailed7101224(arg1)
    print("OnSubFailed7101224")
end

function Quest71012:OnSubStart7101213(arg1)
    print("OnSubStart7101213")
end

function Quest71012:OnSubFinish7101213(arg1)
    print("OnSubFinish7101213")
end

function Quest71012:OnSubFailed7101213(arg1)
    print("OnSubFailed7101213")
end

function Quest71012:OnSubStart7101214(arg1)
    print("OnSubStart7101214")
end

function Quest71012:OnSubFinish7101214(arg1)
    print("OnSubFinish7101214")
end

function Quest71012:OnSubFailed7101214(arg1)
    print("OnSubFailed7101214")
end

function Quest71012:OnSubStart7101227(arg1)
    print("OnSubStart7101227")
end

function Quest71012:OnSubFinish7101227(arg1)
    print("OnSubFinish7101227")
end

function Quest71012:OnSubFailed7101227(arg1)
    print("OnSubFailed7101227")
end

return Quest71012
