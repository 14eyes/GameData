require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11110 = class("Quest11110", QuestActorProxy)
Quest11110.defaultAlias = "Quest11110"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11110:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11110:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1111001"] = self.OnSubStart1111001,
        ["1111002"] = self.OnSubStart1111002,
        ["1111003"] = self.OnSubStart1111003,
        ["1111004"] = self.OnSubStart1111004,
        ["1111005"] = self.OnSubStart1111005,
        ["1111006"] = self.OnSubStart1111006,
        ["1111011"] = self.OnSubStart1111011,
        ["1111012"] = self.OnSubStart1111012,
        ["1111013"] = self.OnSubStart1111013,
        ["1111014"] = self.OnSubStart1111014,
        ["1111007"] = self.OnSubStart1111007,
        ["1111008"] = self.OnSubStart1111008,
        ["1111009"] = self.OnSubStart1111009,
        ["1111010"] = self.OnSubStart1111010
    }
end

function Quest11110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1111001"] = self.OnSubFinish1111001,
        ["1111002"] = self.OnSubFinish1111002,
        ["1111003"] = self.OnSubFinish1111003,
        ["1111004"] = self.OnSubFinish1111004,
        ["1111005"] = self.OnSubFinish1111005,
        ["1111006"] = self.OnSubFinish1111006,
        ["1111011"] = self.OnSubFinish1111011,
        ["1111012"] = self.OnSubFinish1111012,
        ["1111013"] = self.OnSubFinish1111013,
        ["1111014"] = self.OnSubFinish1111014,
        ["1111007"] = self.OnSubFinish1111007,
        ["1111008"] = self.OnSubFinish1111008,
        ["1111009"] = self.OnSubFinish1111009,
        ["1111010"] = self.OnSubFinish1111010
    }
end

function Quest11110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1111001"] = self.OnSubFailed1111001,
        ["1111002"] = self.OnSubFailed1111002,
        ["1111003"] = self.OnSubFailed1111003,
        ["1111004"] = self.OnSubFailed1111004,
        ["1111005"] = self.OnSubFailed1111005,
        ["1111006"] = self.OnSubFailed1111006,
        ["1111011"] = self.OnSubFailed1111011,
        ["1111012"] = self.OnSubFailed1111012,
        ["1111013"] = self.OnSubFailed1111013,
        ["1111014"] = self.OnSubFailed1111014,
        ["1111007"] = self.OnSubFailed1111007,
        ["1111008"] = self.OnSubFailed1111008,
        ["1111009"] = self.OnSubFailed1111009,
        ["1111010"] = self.OnSubFailed1111010
    }
end

function Quest11110:Start()
    print("Start")
end

function Quest11110:OnDestroy()
    print("OnDestroy")
end

function Quest11110:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc2084Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2016Data.alias, 0, true)
end

function Quest11110:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest11110:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest11110:ClearData()
    print("ClearData")
    actorMgr:DestroyEntityActor(datas.Q11110Trigger_.alias, 3, false)
    self:NotifyTo(npcs.Npc2016Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2084Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc10343Data_wuwangpo.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc201601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc208401Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10360Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10361Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10346Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10347Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10348Data.alias, 3)
end

function Quest11110:Finish1111004_Narrator()
    print("Finish1111004_Narrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111004)
end

function Quest11110:Finish1111003_Narrator()
    print("Finish1111003_Narrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111003)
end

function Quest11110:Finish1111007_Narrator()
    print("Finish1111007_Narrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111007)
end

function Quest11110:Finish1111008_Narrator()
    print("Finish1111008_Narrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111008)
end

function Quest11110:Finish1111009_Narrator()
    print("Finish1111009_Narrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111009)
end

function Quest11110:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("1111111111111111111111111")
        self:DestroyQuestNpcActor(npcs.Npc10343Data_wuwangpo.alias, 3)
    elseif arg1 == 2 then
    end
end

function Quest11110:Finish1111001_Narrator()
    print("Finish1111001_Narrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111001)
end

function Quest11110:OnSubStart1111001(arg1)
    print("OnSubStart1111001")
    self:CreateQuestNpc(arg1, npcs.Npc10366Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q11110Trigger_1111001_.alias, datas.Q11110Trigger_1111001_.script, datas.Q11110Trigger_1111001_.id, 0, datas.Q11110Trigger_1111001_.point.pos, datas.Q11110Trigger_1111001_.point.rot, true, false, 3)
end

function Quest11110:OnSubFinish1111001(arg1)
    print("OnSubFinish1111001")
    self:SafeDestroyQuestNpc(npcs.Npc10366Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:CallDelay(5.5, self.Finish1111001_Narrator)
end

function Quest11110:OnSubFailed1111001(arg1)
    print("OnSubFailed1111001")
end

function Quest11110:OnSubStart1111002(arg1)
    print("OnSubStart1111002")
    self:CreateQuestNpc(arg1, npcs.Npc10343Data_wuwangpo.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1021Data_maoxian.id, 2)
    actorMgr:GetActor(actorAlias):SetQuestVarByMainId(1, 0)
    actorMgr:CreateActorWithPos(datas.Q11110Trigger_.alias, datas.Q11110Trigger_.script, datas.Q11110Trigger_.id, 0, datas.Q11110Trigger_.point.pos, datas.Q11110Trigger_.point.rot, true, false, 3)
end

function Quest11110:OnSubFinish1111002(arg1)
    print("OnSubFinish1111002")
    actorMgr:GetActor(actorAlias):SetQuestVarByMainId(1, 0)
end

function Quest11110:OnSubFailed1111002(arg1)
    print("OnSubFailed1111002")
end

function Quest11110:OnSubStart1111003(arg1)
    print("OnSubStart1111003")
    self:RequestInteraction(npcs.Npc10343Data_wuwangpo.alias)
end

function Quest11110:OnSubFinish1111003(arg1)
    print("OnSubFinish1111003")
    self:CallDelay(0.5, self.Finish1111003_Narrator)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11110:OnSubFailed1111003(arg1)
    print("OnSubFailed1111003")
end

function Quest11110:OnSubStart1111004(arg1)
    print("OnSubStart1111004")
    self:CreateQuestNpc(arg1, npcs.Npc1021Data_maoxian.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc201601Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10343Data_maoxian.id, 3)
    self:NotifyTo(npcs.Npc2016Data.alias, 1, true)
end

function Quest11110:OnSubFinish1111004(arg1)
    print("OnSubFinish1111004")
    self:CallDelay(0.5, self.Finish1111004_Narrator)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11110:OnSubFailed1111004(arg1)
    print("OnSubFailed1111004")
end

function Quest11110:OnSubStart1111005(arg1)
    print("OnSubStart1111005")
    self:CreateQuestNpc(arg1, npcs.Npc1021Data_wangshengtang.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10343Data_wangshegntang.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc208401Data.id, 3)
    self:NotifyTo(npcs.Npc2016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
end

function Quest11110:OnSubFinish1111005(arg1)
    print("OnSubFinish1111005")
    self:SafeDestroyQuestNpc(npcs.Npc201601Data.alias, 3)
    self:NotifyTo(npcs.Npc2016Data.alias, 0, true)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11110:OnSubFailed1111005(arg1)
    print("OnSubFailed1111005")
end

function Quest11110:OnSubStart1111006(arg1)
    print("OnSubStart1111006")
    self:CreateQuestNpc(arg1, npcs.Npc10360Data.id, 1)
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
end

function Quest11110:OnSubFinish1111006(arg1)
    print("OnSubFinish1111006")
    self:SafeDestroyQuestNpc(npcs.Npc10360Data.alias, 3)
end

function Quest11110:OnSubFailed1111006(arg1)
    print("OnSubFailed1111006")
end

function Quest11110:OnSubStart1111011(arg1)
    print("OnSubStart1111011")
    self:CreateQuestNpc(arg1, npcs.Npc10361Data.id, 1)
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
end

function Quest11110:OnSubFinish1111011(arg1)
    print("OnSubFinish1111011")
    self:SafeDestroyQuestNpc(npcs.Npc10361Data.alias, 3)
end

function Quest11110:OnSubFailed1111011(arg1)
    print("OnSubFailed1111011")
end

function Quest11110:OnSubStart1111012(arg1)
    print("OnSubStart1111012")
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
end

function Quest11110:OnSubFinish1111012(arg1)
    print("OnSubFinish1111012")
end

function Quest11110:OnSubFailed1111012(arg1)
    print("OnSubFailed1111012")
end

function Quest11110:OnSubStart1111013(arg1)
    print("OnSubStart1111013")
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
end

function Quest11110:OnSubFinish1111013(arg1)
    print("OnSubFinish1111013")
end

function Quest11110:OnSubFailed1111013(arg1)
    print("OnSubFailed1111013")
end

function Quest11110:OnSubStart1111014(arg1)
    print("OnSubStart1111014")
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
end

function Quest11110:OnSubFinish1111014(arg1)
    print("OnSubFinish1111014")
end

function Quest11110:OnSubFailed1111014(arg1)
    print("OnSubFailed1111014")
end

function Quest11110:OnSubStart1111007(arg1)
    print("OnSubStart1111007")
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111006)
end

function Quest11110:OnSubFinish1111007(arg1)
    print("OnSubFinish1111007")
    self:SafeDestroyQuestNpc(npcs.Npc1021Data_wangshengtang.alias, 3)
    self:CallDelay(0.5, self.Finish1111007_Narrator)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11110:OnSubFailed1111007(arg1)
    print("OnSubFailed1111007")
end

function Quest11110:OnSubStart1111008(arg1)
    print("OnSubStart1111008")
    self:CreateQuestNpc(arg1, npcs.Npc10346Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10343Data_wangshegntang.id, 2)
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
end

function Quest11110:OnSubFinish1111008(arg1)
    print("OnSubFinish1111008")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc1021Data_maoxian.alias, 3)
    self:CallDelay(0.5, self.Finish1111008_Narrator)
end

function Quest11110:OnSubFailed1111008(arg1)
    print("OnSubFailed1111008")
end

function Quest11110:OnSubStart1111009(arg1)
    print("OnSubStart1111009")
    self:CreateQuestNpc(arg1, npcs.Npc10347Data.id, 1)
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
end

function Quest11110:OnSubFinish1111009(arg1)
    print("OnSubFinish1111009")
    self:SafeDestroyQuestNpc(npcs.Npc10346Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc1021Data_maoxian.alias, 3)
    self:CallDelay(0.5, self.Finish1111009_Narrator)
end

function Quest11110:OnSubFailed1111009(arg1)
    print("OnSubFailed1111009")
end

function Quest11110:OnSubStart1111010(arg1)
    print("OnSubStart1111010")
    self:CreateQuestNpc(arg1, npcs.Npc10348Data.id, 1)
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
end

function Quest11110:OnSubFinish1111010(arg1)
    print("OnSubFinish1111010")
    self:SafeDestroyQuestNpc(npcs.Npc10347Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10343Data_wangshegntang.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc208401Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc1021Data_maoxian.alias, 3)
end

function Quest11110:OnSubFailed1111010(arg1)
    print("OnSubFailed1111010")
end

return Quest11110
