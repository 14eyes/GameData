require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14018 = class("Quest14018", QuestActorProxy)
Quest14018.defaultAlias = "Quest14018"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest14018:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest14018:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1401801"] = self.OnSubStart1401801}
end

function Quest14018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1401801"] = self.OnSubFinish1401801}
end

function Quest14018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14018:Start()
    print("Start")
end

function Quest14018:OnDestroy()
    print("OnDestroy")
end

function Quest14018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14018:OnSubStart1401801(arg1)
    print("OnSubStart1401801")
    this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
    this:CreateLocalGadget(70711335, "0", datas.PaintPoint, {x = 0.0, y = 283.235, z = 0.0}, 3, nil, nil, false, 0)
end

function Quest14018:OnSubFinish1401801(arg1)
    print("OnSubFinish1401801")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:RemoveLocalGadget(70711335, "0")
end

return Quest14018
