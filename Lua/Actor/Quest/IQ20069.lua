require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20069 = class("Quest20069", QuestActorProxy)
Quest20069.defaultAlias = "Quest20069"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20069:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20069:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2006901"] = self.OnSubStart2006901,
        ["2006902"] = self.OnSubStart2006902,
        ["2006907"] = self.OnSubStart2006907,
        ["2006908"] = self.OnSubStart2006908,
        ["2006903"] = self.OnSubStart2006903,
        ["2006904"] = self.OnSubStart2006904,
        ["2006906"] = self.OnSubStart2006906,
        ["2006909"] = self.OnSubStart2006909,
        ["2006905"] = self.OnSubStart2006905,
        ["2006912"] = self.OnSubStart2006912
    }
end

function Quest20069:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2006901"] = self.OnSubFinish2006901,
        ["2006902"] = self.OnSubFinish2006902,
        ["2006907"] = self.OnSubFinish2006907,
        ["2006908"] = self.OnSubFinish2006908,
        ["2006903"] = self.OnSubFinish2006903,
        ["2006904"] = self.OnSubFinish2006904,
        ["2006906"] = self.OnSubFinish2006906,
        ["2006909"] = self.OnSubFinish2006909,
        ["2006905"] = self.OnSubFinish2006905,
        ["2006912"] = self.OnSubFinish2006912
    }
end

function Quest20069:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2006901"] = self.OnSubFailed2006901,
        ["2006902"] = self.OnSubFailed2006902,
        ["2006907"] = self.OnSubFailed2006907,
        ["2006908"] = self.OnSubFailed2006908,
        ["2006903"] = self.OnSubFailed2006903,
        ["2006904"] = self.OnSubFailed2006904,
        ["2006906"] = self.OnSubFailed2006906,
        ["2006909"] = self.OnSubFailed2006909,
        ["2006905"] = self.OnSubFailed2006905,
        ["2006912"] = self.OnSubFailed2006912
    }
end

function Quest20069:Start()
    print("Start")
end

function Quest20069:OnDestroy()
    print("OnDestroy")
end

function Quest20069:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ClearData()
end

function Quest20069:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest20069:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20069:ClearData()
    print("ClearData")
    self:LightNotifyTo(npcs.Npc1425Data.alias, 0, true)
end

function Quest20069:OnSubStart2006901(arg1)
    print("OnSubStart2006901")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20069:OnSubFinish2006901(arg1)
    print("OnSubFinish2006901")
end

function Quest20069:OnSubFailed2006901(arg1)
    print("OnSubFailed2006901")
end

function Quest20069:OnSubStart2006902(arg1)
    print("OnSubStart2006902")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20069:OnSubFinish2006902(arg1)
    print("OnSubFinish2006902")
    self:TransmitPlayerByQuestId(2006902, 1)
end

function Quest20069:OnSubFailed2006902(arg1)
    print("OnSubFailed2006902")
end

function Quest20069:OnSubStart2006907(arg1)
    print("OnSubStart2006907")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_pool, nil, 20069)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20069:OnSubFinish2006907(arg1)
    print("OnSubFinish2006907")
    self:TransmitPlayerByQuestId(2006907, 1)
end

function Quest20069:OnSubFailed2006907(arg1)
    print("OnSubFailed2006907")
end

function Quest20069:OnSubStart2006908(arg1)
    print("OnSubStart2006908")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_cave1, nil, 20069)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20069:OnSubFinish2006908(arg1)
    print("OnSubFinish2006908")
end

function Quest20069:OnSubFailed2006908(arg1)
    print("OnSubFailed2006908")
end

function Quest20069:OnSubStart2006903(arg1)
    print("OnSubStart2006903")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_2006915, nil, 2006915)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20069:OnSubFinish2006903(arg1)
    print("OnSubFinish2006903")
end

function Quest20069:OnSubFailed2006903(arg1)
    print("OnSubFailed2006903")
end

function Quest20069:OnSubStart2006904(arg1)
    print("OnSubStart2006904")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20069:OnSubFinish2006904(arg1)
    print("OnSubFinish2006904")
    self:TransmitPlayerByQuestId(2006904, 1)
end

function Quest20069:OnSubFailed2006904(arg1)
    print("OnSubFailed2006904")
end

function Quest20069:OnSubStart2006906(arg1)
    print("OnSubStart2006906")
    self:FinishQuestID(false, 2006906)
end

function Quest20069:OnSubFinish2006906(arg1)
    print("OnSubFinish2006906")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_destroy1, nil, 20069)
end

function Quest20069:OnSubFailed2006906(arg1)
    print("OnSubFailed2006906")
end

function Quest20069:OnSubStart2006909(arg1)
    print("OnSubStart2006909")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20069:OnSubFinish2006909(arg1)
    print("OnSubFinish2006909")
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData, nil, nil, "")
    self:LightNotifyTo(npcs.Npc1425Data.alias, 0, true)
end

function Quest20069:OnSubFailed2006909(arg1)
    print("OnSubFailed2006909")
end

function Quest20069:OnSubStart2006905(arg1)
    print("OnSubStart2006905")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_cave2, nil, 20069)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20069:OnSubFinish2006905(arg1)
    print("OnSubFinish2006905")
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData, nil, nil, "")
    self:LightNotifyTo(npcs.Npc1425Data.alias, 0, true)
end

function Quest20069:OnSubFailed2006905(arg1)
    print("OnSubFailed2006905")
end

function Quest20069:OnSubStart2006912(arg1)
    print("OnSubStart2006912")
end

function Quest20069:OnSubFinish2006912(arg1)
    print("OnSubFinish2006912")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_statue, nil, 20069)
end

function Quest20069:OnSubFailed2006912(arg1)
    print("OnSubFailed2006912")
end

return Quest20069
