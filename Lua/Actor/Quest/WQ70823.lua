require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70823 = class("Quest70823", QuestActorProxy)
Quest70823.defaultAlias = "Quest70823"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70823:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70823:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7082301"] = self.OnSubStart7082301,
        ["7082302"] = self.OnSubStart7082302,
        ["7082303"] = self.OnSubStart7082303,
        ["7082306"] = self.OnSubStart7082306,
        ["7082307"] = self.OnSubStart7082307,
        ["7082304"] = self.OnSubStart7082304,
        ["7082305"] = self.OnSubStart7082305,
        ["7082308"] = self.OnSubStart7082308
    }
end

function Quest70823:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7082301"] = self.OnSubFinish7082301,
        ["7082302"] = self.OnSubFinish7082302,
        ["7082303"] = self.OnSubFinish7082303,
        ["7082306"] = self.OnSubFinish7082306,
        ["7082307"] = self.OnSubFinish7082307,
        ["7082304"] = self.OnSubFinish7082304,
        ["7082305"] = self.OnSubFinish7082305,
        ["7082308"] = self.OnSubFinish7082308
    }
end

function Quest70823:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70823:Start()
    print("Start")
end

function Quest70823:OnDestroy()
    print("OnDestroy")
end

function Quest70823:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc2099Data.alias, 0, true)
end

function Quest70823:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70823:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc2099Data.alias, 0, true)
end

function Quest70823:StartDaily()
    print("StartDaily")
    self:NotifyTo(npcs.Npc2099Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2098Data.alias, 0, true)
end

function Quest70823:OnSubStart7082301(arg1)
    print("OnSubStart7082301")
    self:NotifyTo(npcs.Npc2099Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2098Data.alias, 2, true)
end

function Quest70823:OnSubFinish7082301(arg1)
    print("OnSubFinish7082301")
    self:SetQuestVar(7082301, 0, 1)
end

function Quest70823:OnSubStart7082302(arg1)
    print("OnSubStart7082302")
    self:NotifyTo(npcs.Npc2099Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2098Data.alias, 2, true)
end

function Quest70823:OnSubFinish7082302(arg1)
    print("OnSubFinish7082302")
    self:NarratorOnlyTask(datas.PaimonReminder02, nil, "")
end

function Quest70823:OnSubStart7082303(arg1)
    print("OnSubStart7082303")
    self:NotifyTo(npcs.Npc2099Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2098Data.alias, 2, true)
end

function Quest70823:OnSubFinish7082303(arg1)
    print("OnSubFinish7082303")
end

function Quest70823:OnSubStart7082306(arg1)
    print("OnSubStart7082306")
    self:NotifyTo(npcs.Npc2099Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2098Data.alias, 2, true)
end

function Quest70823:OnSubFinish7082306(arg1)
    print("OnSubFinish7082306")
    self:NarratorOnlyTask(datas.PaimonReminder06, nil, "")
end

function Quest70823:OnSubStart7082307(arg1)
    print("OnSubStart7082307")
    self:NotifyTo(npcs.Npc2099Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2098Data.alias, 2, true)
end

function Quest70823:OnSubFinish7082307(arg1)
    print("OnSubFinish7082307")
end

function Quest70823:OnSubStart7082304(arg1)
    print("OnSubStart7082304")
    self:NotifyTo(npcs.Npc2099Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2098Data.alias, 2, true)
end

function Quest70823:OnSubFinish7082304(arg1)
    print("OnSubFinish7082304")
    self:NarratorOnlyTask(datas.PaimonReminder04, nil, "")
end

function Quest70823:OnSubStart7082305(arg1)
    print("OnSubStart7082305")
    self:NotifyTo(npcs.Npc2099Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2098Data.alias, 2, true)
end

function Quest70823:OnSubFinish7082305(arg1)
    print("OnSubFinish7082305")
    self:NarratorOnlyTask(datas.PaimonReminder08, nil, "")
end

function Quest70823:OnSubStart7082308(arg1)
    print("OnSubStart7082308")
    self:NotifyTo(npcs.Npc2099Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2098Data.alias, 2, true)
end

function Quest70823:OnSubFinish7082308(arg1)
    print("OnSubFinish7082308")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.StartDaily, nil, nil, "")
end

return Quest70823
