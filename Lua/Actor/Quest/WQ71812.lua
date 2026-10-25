require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71812 = class("Quest71812", QuestActorProxy)
Quest71812.defaultAlias = "Quest71812"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71812:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71812:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7181201"] = self.OnSubStart7181201,
        ["7181202"] = self.OnSubStart7181202,
        ["7181203"] = self.OnSubStart7181203,
        ["7181204"] = self.OnSubStart7181204,
        ["7181206"] = self.OnSubStart7181206,
        ["7181207"] = self.OnSubStart7181207,
        ["7181208"] = self.OnSubStart7181208,
        ["7181205"] = self.OnSubStart7181205,
        ["7181209"] = self.OnSubStart7181209,
        ["7181210"] = self.OnSubStart7181210
    }
end

function Quest71812:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7181201"] = self.OnSubFinish7181201,
        ["7181202"] = self.OnSubFinish7181202,
        ["7181203"] = self.OnSubFinish7181203,
        ["7181204"] = self.OnSubFinish7181204,
        ["7181206"] = self.OnSubFinish7181206,
        ["7181207"] = self.OnSubFinish7181207,
        ["7181208"] = self.OnSubFinish7181208,
        ["7181205"] = self.OnSubFinish7181205,
        ["7181209"] = self.OnSubFinish7181209,
        ["7181210"] = self.OnSubFinish7181210
    }
end

function Quest71812:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7181201"] = self.OnSubFailed7181201,
        ["7181202"] = self.OnSubFailed7181202,
        ["7181203"] = self.OnSubFailed7181203,
        ["7181204"] = self.OnSubFailed7181204,
        ["7181206"] = self.OnSubFailed7181206,
        ["7181207"] = self.OnSubFailed7181207,
        ["7181208"] = self.OnSubFailed7181208,
        ["7181205"] = self.OnSubFailed7181205,
        ["7181209"] = self.OnSubFailed7181209,
        ["7181210"] = self.OnSubFailed7181210
    }
end

function Quest71812:Start()
    print("Start")
end

function Quest71812:OnDestroy()
    print("OnDestroy")
end

function Quest71812:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71812:OnMainFailed(arg1)
    print("OnMainFailed")
    this:ClearData()
end

function Quest71812:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearData()
end

function Quest71812:OpenReading()
    print("OpenReading")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:ShowReadingDialog(100711)
    end
end

function Quest71812:ClearData()
    print("ClearData")
    this:NotifyTo(npcs.Npc2016Data.alias, 0, true)
end

function Quest71812:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("7181204 running")
    if arg1 == 1 then
        print("Talk7181204:Finishi Clear Paimon")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
            print("delete and finish")
            actor:FinishQuestID(false, 7181204)
            questNpcActor:DestroyWithDisappear()
        end
    elseif arg1 == 2 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:ShowReadingDialog(100712)
        end
    end
end

function Quest71812:OnSubStart7181201(arg1)
    print("OnSubStart7181201")
end

function Quest71812:OnSubFinish7181201(arg1)
    print("OnSubFinish7181201")
end

function Quest71812:OnSubFailed7181201(arg1)
    print("OnSubFailed7181201")
end

function Quest71812:OnSubStart7181202(arg1)
    print("OnSubStart7181202")
    actorMgr:CreateActorWithPos(datas.Q71812Trigger_.alias, datas.Q71812Trigger_.script, datas.Q71812Trigger_.id, 1, datas.Q71812Trigger_.point.pos, datas.Q71812Trigger_.point.rot, true, false, 3)
end

function Quest71812:OnSubFinish7181202(arg1)
    print("OnSubFinish7181202")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_7181202, self.OpenReading, 71812)
    actorMgr:DestroyEntityActor(datas.Q71812Trigger_.alias, 3, false)
end

function Quest71812:OnSubFailed7181202(arg1)
    print("OnSubFailed7181202")
end

function Quest71812:OnSubStart7181203(arg1)
    print("OnSubStart7181203")
end

function Quest71812:OnSubFinish7181203(arg1)
    print("OnSubFinish7181203")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_7181203, nil, 71812)
end

function Quest71812:OnSubFailed7181203(arg1)
    print("OnSubFailed7181203")
end

function Quest71812:OnSubStart7181204(arg1)
    print("OnSubStart7181204")
end

function Quest71812:OnSubFinish7181204(arg1)
    print("OnSubFinish7181204")
end

function Quest71812:OnSubFailed7181204(arg1)
    print("OnSubFailed7181204")
end

function Quest71812:OnSubStart7181206(arg1)
    print("OnSubStart7181206")
end

function Quest71812:OnSubFinish7181206(arg1)
    print("OnSubFinish7181206")
end

function Quest71812:OnSubFailed7181206(arg1)
    print("OnSubFailed7181206")
end

function Quest71812:OnSubStart7181207(arg1)
    print("OnSubStart7181207")
end

function Quest71812:OnSubFinish7181207(arg1)
    print("OnSubFinish7181207")
end

function Quest71812:OnSubFailed7181207(arg1)
    print("OnSubFailed7181207")
end

function Quest71812:OnSubStart7181208(arg1)
    print("OnSubStart7181208")
end

function Quest71812:OnSubFinish7181208(arg1)
    print("OnSubFinish7181208")
end

function Quest71812:OnSubFailed7181208(arg1)
    print("OnSubFailed7181208")
end

function Quest71812:OnSubStart7181205(arg1)
    print("OnSubStart7181205")
end

function Quest71812:OnSubFinish7181205(arg1)
    print("OnSubFinish7181205")
end

function Quest71812:OnSubFailed7181205(arg1)
    print("OnSubFailed7181205")
end

function Quest71812:OnSubStart7181209(arg1)
    print("OnSubStart7181209")
end

function Quest71812:OnSubFinish7181209(arg1)
    print("OnSubFinish7181209")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_7181209, nil, 71812)
    end)
end

function Quest71812:OnSubFailed7181209(arg1)
    print("OnSubFailed7181209")
end

function Quest71812:OnSubStart7181210(arg1)
    print("OnSubStart7181210")
end

function Quest71812:OnSubFinish7181210(arg1)
    print("OnSubFinish7181210")
end

function Quest71812:OnSubFailed7181210(arg1)
    print("OnSubFailed7181210")
end

return Quest71812
