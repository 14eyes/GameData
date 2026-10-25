require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72128 = class("Quest72128", QuestActorProxy)
Quest72128.defaultAlias = "Quest72128"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72128:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72128:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7212801"] = self.OnSubStart7212801,
        ["7212807"] = self.OnSubStart7212807,
        ["7212817"] = self.OnSubStart7212817,
        ["7212808"] = self.OnSubStart7212808,
        ["7212809"] = self.OnSubStart7212809,
        ["7212810"] = self.OnSubStart7212810,
        ["7212802"] = self.OnSubStart7212802,
        ["7212803"] = self.OnSubStart7212803,
        ["7212804"] = self.OnSubStart7212804,
        ["7212805"] = self.OnSubStart7212805,
        ["7212816"] = self.OnSubStart7212816,
        ["7212813"] = self.OnSubStart7212813,
        ["7212814"] = self.OnSubStart7212814,
        ["7212806"] = self.OnSubStart7212806,
        ["7212812"] = self.OnSubStart7212812,
        ["7212815"] = self.OnSubStart7212815,
        ["7212811"] = self.OnSubStart7212811
    }
end

function Quest72128:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7212801"] = self.OnSubFinish7212801,
        ["7212807"] = self.OnSubFinish7212807,
        ["7212817"] = self.OnSubFinish7212817,
        ["7212808"] = self.OnSubFinish7212808,
        ["7212809"] = self.OnSubFinish7212809,
        ["7212810"] = self.OnSubFinish7212810,
        ["7212802"] = self.OnSubFinish7212802,
        ["7212803"] = self.OnSubFinish7212803,
        ["7212804"] = self.OnSubFinish7212804,
        ["7212805"] = self.OnSubFinish7212805,
        ["7212816"] = self.OnSubFinish7212816,
        ["7212813"] = self.OnSubFinish7212813,
        ["7212814"] = self.OnSubFinish7212814,
        ["7212806"] = self.OnSubFinish7212806,
        ["7212812"] = self.OnSubFinish7212812,
        ["7212815"] = self.OnSubFinish7212815,
        ["7212811"] = self.OnSubFinish7212811
    }
end

function Quest72128:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7212801"] = self.OnSubFailed7212801,
        ["7212807"] = self.OnSubFailed7212807,
        ["7212817"] = self.OnSubFailed7212817,
        ["7212808"] = self.OnSubFailed7212808,
        ["7212809"] = self.OnSubFailed7212809,
        ["7212810"] = self.OnSubFailed7212810,
        ["7212802"] = self.OnSubFailed7212802,
        ["7212803"] = self.OnSubFailed7212803,
        ["7212804"] = self.OnSubFailed7212804,
        ["7212805"] = self.OnSubFailed7212805,
        ["7212816"] = self.OnSubFailed7212816,
        ["7212813"] = self.OnSubFailed7212813,
        ["7212814"] = self.OnSubFailed7212814,
        ["7212806"] = self.OnSubFailed7212806,
        ["7212812"] = self.OnSubFailed7212812,
        ["7212815"] = self.OnSubFailed7212815,
        ["7212811"] = self.OnSubFailed7212811
    }
end

function Quest72128:Start()
    print("Start")
end

function Quest72128:OnDestroy()
    print("OnDestroy")
end

function Quest72128:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72128:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72128:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72128:OnSubStart7212801(arg1)
    print("OnSubStart7212801")
end

function Quest72128:OnSubFinish7212801(arg1)
    print("OnSubFinish7212801")
end

function Quest72128:OnSubFailed7212801(arg1)
    print("OnSubFailed7212801")
end

function Quest72128:OnSubStart7212807(arg1)
    print("OnSubStart7212807")
end

function Quest72128:OnSubFinish7212807(arg1)
    print("OnSubFinish7212807")
end

function Quest72128:OnSubFailed7212807(arg1)
    print("OnSubFailed7212807")
end

function Quest72128:OnSubStart7212808(arg1)
    print("OnSubStart7212808")
end

function Quest72128:OnSubFinish7212808(arg1)
    print("OnSubFinish7212808")
end

function Quest72128:OnSubFailed7212808(arg1)
    print("OnSubFailed7212808")
end

function Quest72128:OnSubStart7212809(arg1)
    print("OnSubStart7212809")
end

function Quest72128:OnSubFinish7212809(arg1)
    print("OnSubFinish7212809")
end

function Quest72128:OnSubFailed7212809(arg1)
    print("OnSubFailed7212809")
end

function Quest72128:OnSubStart7212810(arg1)
    print("OnSubStart7212810")
end

function Quest72128:OnSubFinish7212810(arg1)
    print("OnSubFinish7212810")
end

function Quest72128:OnSubFailed7212810(arg1)
    print("OnSubFailed7212810")
end

function Quest72128:OnSubStart7212802(arg1)
    print("OnSubStart7212802")
end

function Quest72128:OnSubFinish7212802(arg1)
    print("OnSubFinish7212802")
end

function Quest72128:OnSubFailed7212802(arg1)
    print("OnSubFailed7212802")
end

function Quest72128:OnSubStart7212803(arg1)
    print("OnSubStart7212803")
end

function Quest72128:OnSubFinish7212803(arg1)
    print("OnSubFinish7212803")
end

function Quest72128:OnSubFailed7212803(arg1)
    print("OnSubFailed7212803")
end

function Quest72128:OnSubStart7212804(arg1)
    print("OnSubStart7212804")
end

function Quest72128:OnSubFinish7212804(arg1)
    print("OnSubFinish7212804")
end

function Quest72128:OnSubFailed7212804(arg1)
    print("OnSubFailed7212804")
end

function Quest72128:OnSubStart7212805(arg1)
    print("OnSubStart7212805")
end

function Quest72128:OnSubFinish7212805(arg1)
    print("OnSubFinish7212805")
end

function Quest72128:OnSubFailed7212805(arg1)
    print("OnSubFailed7212805")
end

function Quest72128:OnSubStart7212813(arg1)
    print("OnSubStart7212813")
end

function Quest72128:OnSubFinish7212813(arg1)
    print("OnSubFinish7212813")
end

function Quest72128:OnSubFailed7212813(arg1)
    print("OnSubFailed7212813")
end

function Quest72128:OnSubStart7212814(arg1)
    print("OnSubStart7212814")
end

function Quest72128:OnSubFinish7212814(arg1)
    print("OnSubFinish7212814")
end

function Quest72128:OnSubFailed7212814(arg1)
    print("OnSubFailed7212814")
end

function Quest72128:OnSubStart7212806(arg1)
    print("OnSubStart7212806")
end

function Quest72128:OnSubFinish7212806(arg1)
    print("OnSubFinish7212806")
end

function Quest72128:OnSubFailed7212806(arg1)
    print("OnSubFailed7212806")
end

function Quest72128:OnSubStart7212812(arg1)
    print("OnSubStart7212812")
end

function Quest72128:OnSubFinish7212812(arg1)
    print("OnSubFinish7212812")
end

function Quest72128:OnSubFailed7212812(arg1)
    print("OnSubFailed7212812")
end

function Quest72128:OnSubStart7212811(arg1)
    print("OnSubStart7212811")
end

function Quest72128:OnSubFinish7212811(arg1)
    print("OnSubFinish7212811")
end

function Quest72128:OnSubFailed7212811(arg1)
    print("OnSubFailed7212811")
end

function Quest72128:OnSubStart7212817(arg1)
    print("OnSubStart7212817")
end

function Quest72128:OnSubFinish7212817(arg1)
    print("OnSubFinish7212817")
end

function Quest72128:OnSubFailed7212817(arg1)
    print("OnSubFailed7212817")
end

function Quest72128:OnSubStart7212816(arg1)
    print("OnSubStart7212816")
end

function Quest72128:OnSubFinish7212816(arg1)
    print("OnSubFinish7212816")
end

function Quest72128:OnSubFailed7212816(arg1)
    print("OnSubFailed7212816")
end

function Quest72128:OnSubStart7212815(arg1)
    print("OnSubStart7212815")
end

function Quest72128:OnSubFinish7212815(arg1)
    print("OnSubFinish7212815")
end

function Quest72128:OnSubFailed7212815(arg1)
    print("OnSubFailed7212815")
end

return Quest72128
