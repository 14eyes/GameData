require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11112 = class("Quest11112", QuestActorProxy)
Quest11112.defaultAlias = "Quest11112"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11112:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11112:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1111201"] = self.OnSubStart1111201,
        ["1111202"] = self.OnSubStart1111202,
        ["1111222"] = self.OnSubStart1111222,
        ["1111203"] = self.OnSubStart1111203,
        ["1111204"] = self.OnSubStart1111204,
        ["1111205"] = self.OnSubStart1111205,
        ["1111225"] = self.OnSubStart1111225,
        ["1111206"] = self.OnSubStart1111206,
        ["1111209"] = self.OnSubStart1111209,
        ["1111223"] = self.OnSubStart1111223,
        ["1111224"] = self.OnSubStart1111224,
        ["1111208"] = self.OnSubStart1111208
    }
end

function Quest11112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1111201"] = self.OnSubFinish1111201,
        ["1111202"] = self.OnSubFinish1111202,
        ["1111222"] = self.OnSubFinish1111222,
        ["1111203"] = self.OnSubFinish1111203,
        ["1111204"] = self.OnSubFinish1111204,
        ["1111205"] = self.OnSubFinish1111205,
        ["1111225"] = self.OnSubFinish1111225,
        ["1111206"] = self.OnSubFinish1111206,
        ["1111209"] = self.OnSubFinish1111209,
        ["1111223"] = self.OnSubFinish1111223,
        ["1111224"] = self.OnSubFinish1111224,
        ["1111208"] = self.OnSubFinish1111208
    }
end

function Quest11112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1111201"] = self.OnSubFailed1111201,
        ["1111202"] = self.OnSubFailed1111202,
        ["1111222"] = self.OnSubFailed1111222,
        ["1111203"] = self.OnSubFailed1111203,
        ["1111204"] = self.OnSubFailed1111204,
        ["1111205"] = self.OnSubFailed1111205,
        ["1111225"] = self.OnSubFailed1111225,
        ["1111206"] = self.OnSubFailed1111206,
        ["1111209"] = self.OnSubFailed1111209,
        ["1111223"] = self.OnSubFailed1111223,
        ["1111224"] = self.OnSubFailed1111224,
        ["1111208"] = self.OnSubFailed1111208
    }
end

function Quest11112:Start()
    print("Start")
    self:SetQuestVarByMainId(0, 0)
end

function Quest11112:OnDestroy()
    print("OnDestroy")
end

function Quest11112:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc2084Data.alias, 0, true)
end

function Quest11112:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest11112:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest11112:ClearData()
    print("ClearData")
    self:NotifyTo(npcs.Npc2084Data.alias, 0, true)
end

function Quest11112:Finish1111201_Narrator()
    print("Finish1111201_Narrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111201)
end

function Quest11112:Finish1111206_Narrator()
    print("Finish1111206_Narrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111206)
end

function Quest11112:Finish1111209_Narrator()
    print("Finish1111209_Narrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111209)
end

function Quest11112:Finish1111208_Narrator()
    print("Finish1111208_Narrator")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1111208)
end

function Quest11112:OnSubStart1111201(arg1)
    print("OnSubStart1111201")
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q11112Trigger_.alias, datas.Q11112Trigger_.script, datas.Q11112Trigger_.id, 0, datas.Q11112Trigger_.point.pos, datas.Q11112Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10366Data.id, 1)
end

function Quest11112:OnSubFinish1111201(arg1)
    print("OnSubFinish1111201")
    self:SafeDestroyQuestNpc(npcs.Npc10366Data.alias, 3)
    self:CallDelay(0.5, self.Finish1111201_Narrator)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10343Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10344Data.alias, 3)
end

function Quest11112:OnSubFailed1111201(arg1)
    print("OnSubFailed1111201")
end

function Quest11112:OnSubStart1111202(arg1)
    print("OnSubStart1111202")
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc10346Data.id, 1)
end

function Quest11112:OnSubFinish1111202(arg1)
    print("OnSubFinish1111202")
    self:NotifyTo(npcs.Npc2084Data.alias, 0, true)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11112:OnSubFailed1111202(arg1)
    print("OnSubFailed1111202")
end

function Quest11112:OnSubStart1111222(arg1)
    print("OnSubStart1111222")
end

function Quest11112:OnSubFinish1111222(arg1)
    print("OnSubFinish1111222")
end

function Quest11112:OnSubFailed1111222(arg1)
    print("OnSubFailed1111222")
end

function Quest11112:OnSubStart1111203(arg1)
    print("OnSubStart1111203")
end

function Quest11112:OnSubFinish1111203(arg1)
    print("OnSubFinish1111203")
    self:SafeDestroyQuestNpc(npcs.Npc10346Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11112:OnSubFailed1111203(arg1)
    print("OnSubFailed1111203")
end

function Quest11112:OnSubStart1111204(arg1)
    print("OnSubStart1111204")
    self:CreateQuestNpc(arg1, npcs.Npc10347Data.id, 1)
end

function Quest11112:OnSubFinish1111204(arg1)
    print("OnSubFinish1111204")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11112:OnSubFailed1111204(arg1)
    print("OnSubFailed1111204")
end

function Quest11112:OnSubStart1111205(arg1)
    print("OnSubStart1111205")
    self:CreateQuestNpc(arg1, npcs.Npc10346Data2.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10347Data2.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10348Data2.id, 3)
end

function Quest11112:OnSubFinish1111205(arg1)
    print("OnSubFinish1111205")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11112:OnSubFailed1111205(arg1)
    print("OnSubFailed1111205")
end

function Quest11112:OnSubStart1111225(arg1)
    print("OnSubStart1111225")
    self:CreateQuestNpc(arg1, npcs.Npc10346Data2.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10347Data2.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10348Data2.id, 3)
end

function Quest11112:OnSubFinish1111225(arg1)
    print("OnSubFinish1111225")
end

function Quest11112:OnSubFailed1111225(arg1)
    print("OnSubFailed1111225")
end

function Quest11112:OnSubStart1111206(arg1)
    print("OnSubStart1111206")
end

function Quest11112:OnSubFinish1111206(arg1)
    print("OnSubFinish1111206")
    self:CallDelay(0.5, self.Finish1111206_Narrator)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11112:OnSubFailed1111206(arg1)
    print("OnSubFailed1111206")
end

function Quest11112:OnSubStart1111209(arg1)
    print("OnSubStart1111209")
end

function Quest11112:OnSubFinish1111209(arg1)
    print("OnSubFinish1111209")
    self:CallDelay(0.5, self.Finish1111209_Narrator)
end

function Quest11112:OnSubFailed1111209(arg1)
    print("OnSubFailed1111209")
end

function Quest11112:OnSubStart1111223(arg1)
    print("OnSubStart1111223")
end

function Quest11112:OnSubFinish1111223(arg1)
    print("OnSubFinish1111223")
    self:CallDelay(0.5, self.Finish1111209_Narrator)
end

function Quest11112:OnSubFailed1111223(arg1)
    print("OnSubFailed1111223")
end

function Quest11112:OnSubStart1111224(arg1)
    print("OnSubStart1111224")
end

function Quest11112:OnSubFinish1111224(arg1)
    print("OnSubFinish1111224")
end

function Quest11112:OnSubFailed1111224(arg1)
    print("OnSubFailed1111224")
end

function Quest11112:OnSubStart1111208(arg1)
    print("OnSubStart1111208")
end

function Quest11112:OnSubFinish1111208(arg1)
    print("OnSubFinish1111208")
    self:CallDelay(0.5, self.Finish1111208_Narrator)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11112:OnSubFailed1111208(arg1)
    print("OnSubFailed1111208")
end

return Quest11112
