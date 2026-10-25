require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71808 = class("Quest71808", QuestActorProxy)
Quest71808.defaultAlias = "Quest71808"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71808:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71808:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7180801"] = self.OnSubStart7180801,
        ["7180802"] = self.OnSubStart7180802,
        ["7180803"] = self.OnSubStart7180803,
        ["7180804"] = self.OnSubStart7180804,
        ["7180809"] = self.OnSubStart7180809,
        ["7180808"] = self.OnSubStart7180808,
        ["7180805"] = self.OnSubStart7180805,
        ["7180806"] = self.OnSubStart7180806,
        ["7180807"] = self.OnSubStart7180807,
        ["7180810"] = self.OnSubStart7180810,
        ["7180811"] = self.OnSubStart7180811
    }
end

function Quest71808:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7180801"] = self.OnSubFinish7180801,
        ["7180802"] = self.OnSubFinish7180802,
        ["7180803"] = self.OnSubFinish7180803,
        ["7180804"] = self.OnSubFinish7180804,
        ["7180809"] = self.OnSubFinish7180809,
        ["7180808"] = self.OnSubFinish7180808,
        ["7180805"] = self.OnSubFinish7180805,
        ["7180806"] = self.OnSubFinish7180806,
        ["7180807"] = self.OnSubFinish7180807,
        ["7180810"] = self.OnSubFinish7180810,
        ["7180811"] = self.OnSubFinish7180811
    }
end

function Quest71808:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7180801"] = self.OnSubFailed7180801,
        ["7180802"] = self.OnSubFailed7180802,
        ["7180803"] = self.OnSubFailed7180803,
        ["7180804"] = self.OnSubFailed7180804,
        ["7180809"] = self.OnSubFailed7180809,
        ["7180808"] = self.OnSubFailed7180808,
        ["7180805"] = self.OnSubFailed7180805,
        ["7180806"] = self.OnSubFailed7180806,
        ["7180807"] = self.OnSubFailed7180807,
        ["7180810"] = self.OnSubFailed7180810,
        ["7180811"] = self.OnSubFailed7180811
    }
end

function Quest71808:Start()
    print("Start")
end

function Quest71808:OnDestroy()
    print("OnDestroy")
end

function Quest71808:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71808:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71808:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71808:CreatePaimon()
    print("CreatePaimon")
    self:CreateQuestNpcById(7180804, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest71808:PaimonReminder()
    print("PaimonReminder")
    self:NarratorOnlyTask(datas.Paimon09, nil, "")
end

function Quest71808:DestroyPaimon()
    print("DestroyPaimon")
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    self:NarratorOnlyTask(datas.Paimon08, nil, "")
end

function Quest71808:OnSubStart7180801(arg1)
    print("OnSubStart7180801")
end

function Quest71808:OnSubFinish7180801(arg1)
    print("OnSubFinish7180801")
end

function Quest71808:OnSubFailed7180801(arg1)
    print("OnSubFailed7180801")
end

function Quest71808:OnSubStart7180802(arg1)
    print("OnSubStart7180802")
end

function Quest71808:OnSubFinish7180802(arg1)
    print("OnSubFinish7180802")
    self:NarratorOnlyTask(datas.Paimon02, nil, "")
end

function Quest71808:OnSubFailed7180802(arg1)
    print("OnSubFailed7180802")
end

function Quest71808:OnSubStart7180803(arg1)
    print("OnSubStart7180803")
end

function Quest71808:OnSubFinish7180803(arg1)
    print("OnSubFinish7180803")
    self:NarratorOnlyTask(datas.Paimon03, nil, "")
end

function Quest71808:OnSubFailed7180803(arg1)
    print("OnSubFailed7180803")
end

function Quest71808:OnSubStart7180804(arg1)
    print("OnSubStart7180804")
end

function Quest71808:OnSubFinish7180804(arg1)
    print("OnSubFinish7180804")
    self:NarratorOnlyTask(datas.Paimon04New, nil, "")
end

function Quest71808:OnSubFailed7180804(arg1)
    print("OnSubFailed7180804")
end

function Quest71808:OnSubStart7180809(arg1)
    print("OnSubStart7180809")
end

function Quest71808:OnSubFinish7180809(arg1)
    print("OnSubFinish7180809")
end

function Quest71808:OnSubFailed7180809(arg1)
    print("OnSubFailed7180809")
end

function Quest71808:OnSubStart7180808(arg1)
    print("OnSubStart7180808")
    self:ShowBlackScreen(0.5, 1.5, 1.5, self.CreatePaimon, nil, nil, "")
end

function Quest71808:OnSubFinish7180808(arg1)
    print("OnSubFinish7180808")
    self:ActionSafeCall(self.DestroyPaimon)
end

function Quest71808:OnSubFailed7180808(arg1)
    print("OnSubFailed7180808")
end

function Quest71808:OnSubStart7180805(arg1)
    print("OnSubStart7180805")
end

function Quest71808:OnSubFinish7180805(arg1)
    print("OnSubFinish7180805")
    self:NarratorOnlyTask(datas.Paimon05New, nil, "")
end

function Quest71808:OnSubFailed7180805(arg1)
    print("OnSubFailed7180805")
end

function Quest71808:OnSubStart7180806(arg1)
    print("OnSubStart7180806")
    actorMgr:CreateActorWithPos(datas.Q71808Trigger_.alias, datas.Q71808Trigger_.script, datas.Q71808Trigger_.id, 0, datas.Q71808Trigger_.point.pos, datas.Q71808Trigger_.point.rot, true, false, 3)
end

function Quest71808:OnSubFinish7180806(arg1)
    print("OnSubFinish7180806")
    self:ActionSafeCall(self.PaimonReminder)
end

function Quest71808:OnSubFailed7180806(arg1)
    print("OnSubFailed7180806")
end

function Quest71808:OnSubStart7180807(arg1)
    print("OnSubStart7180807")
end

function Quest71808:OnSubFinish7180807(arg1)
    print("OnSubFinish7180807")
end

function Quest71808:OnSubFailed7180807(arg1)
    print("OnSubFailed7180807")
end

function Quest71808:OnSubStart7180810(arg1)
    print("OnSubStart7180810")
end

function Quest71808:OnSubFinish7180810(arg1)
    print("OnSubFinish7180810")
end

function Quest71808:OnSubFailed7180810(arg1)
    print("OnSubFailed7180810")
end

function Quest71808:OnSubStart7180811(arg1)
    print("OnSubStart7180811")
end

function Quest71808:OnSubFinish7180811(arg1)
    print("OnSubFinish7180811")
end

function Quest71808:OnSubFailed7180811(arg1)
    print("OnSubFailed7180811")
end

return Quest71808
