require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73289 = class("Quest73289", QuestActorProxy)
Quest73289.defaultAlias = "Quest73289"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73289:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73289:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7328901"] = self.OnSubStart7328901,
        ["7328902"] = self.OnSubStart7328902,
        ["7328903"] = self.OnSubStart7328903,
        ["7328904"] = self.OnSubStart7328904,
        ["7328905"] = self.OnSubStart7328905,
        ["7328906"] = self.OnSubStart7328906,
        ["7328907"] = self.OnSubStart7328907,
        ["7328908"] = self.OnSubStart7328908,
        ["7328909"] = self.OnSubStart7328909,
        ["7328910"] = self.OnSubStart7328910,
        ["7328911"] = self.OnSubStart7328911,
        ["7328912"] = self.OnSubStart7328912,
        ["7328913"] = self.OnSubStart7328913,
        ["7328914"] = self.OnSubStart7328914,
        ["7328915"] = self.OnSubStart7328915,
        ["7328916"] = self.OnSubStart7328916,
        ["7328917"] = self.OnSubStart7328917,
        ["7328918"] = self.OnSubStart7328918,
        ["7328919"] = self.OnSubStart7328919,
        ["7328920"] = self.OnSubStart7328920,
        ["7328921"] = self.OnSubStart7328921,
        ["7328922"] = self.OnSubStart7328922,
        ["7328923"] = self.OnSubStart7328923,
        ["7328924"] = self.OnSubStart7328924,
        ["7328925"] = self.OnSubStart7328925,
        ["7328926"] = self.OnSubStart7328926,
        ["7328927"] = self.OnSubStart7328927,
        ["7328928"] = self.OnSubStart7328928,
        ["7328929"] = self.OnSubStart7328929,
        ["7328930"] = self.OnSubStart7328930,
        ["7328931"] = self.OnSubStart7328931,
        ["7328932"] = self.OnSubStart7328932
    }
end

function Quest73289:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7328901"] = self.OnSubFinish7328901,
        ["7328902"] = self.OnSubFinish7328902,
        ["7328903"] = self.OnSubFinish7328903,
        ["7328904"] = self.OnSubFinish7328904,
        ["7328905"] = self.OnSubFinish7328905,
        ["7328906"] = self.OnSubFinish7328906,
        ["7328907"] = self.OnSubFinish7328907,
        ["7328908"] = self.OnSubFinish7328908,
        ["7328909"] = self.OnSubFinish7328909,
        ["7328910"] = self.OnSubFinish7328910,
        ["7328911"] = self.OnSubFinish7328911,
        ["7328912"] = self.OnSubFinish7328912,
        ["7328913"] = self.OnSubFinish7328913,
        ["7328914"] = self.OnSubFinish7328914,
        ["7328915"] = self.OnSubFinish7328915,
        ["7328916"] = self.OnSubFinish7328916,
        ["7328917"] = self.OnSubFinish7328917,
        ["7328918"] = self.OnSubFinish7328918,
        ["7328919"] = self.OnSubFinish7328919,
        ["7328920"] = self.OnSubFinish7328920,
        ["7328921"] = self.OnSubFinish7328921,
        ["7328922"] = self.OnSubFinish7328922,
        ["7328923"] = self.OnSubFinish7328923,
        ["7328924"] = self.OnSubFinish7328924,
        ["7328925"] = self.OnSubFinish7328925,
        ["7328926"] = self.OnSubFinish7328926,
        ["7328927"] = self.OnSubFinish7328927,
        ["7328928"] = self.OnSubFinish7328928,
        ["7328929"] = self.OnSubFinish7328929,
        ["7328930"] = self.OnSubFinish7328930,
        ["7328931"] = self.OnSubFinish7328931,
        ["7328932"] = self.OnSubFinish7328932
    }
end

function Quest73289:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73289:Start()
    print("Start")
end

function Quest73289:OnDestroy()
    print("OnDestroy")
end

function Quest73289:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73289:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73289:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73289:OnSubStart7328901(arg1)
    print("OnSubStart7328901")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 3)
end

function Quest73289:OnSubFinish7328901(arg1)
    print("OnSubFinish7328901")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest73289:OnSubStart7328902(arg1)
    print("OnSubStart7328902")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
    actorMgr:CreateActorWithPos("Q73289Trigger", "Actor/Gadget/Q73289Trigger", 70900002, 0, {x = 1030.055, y = 203.611, z = 6346.385}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73289:OnSubFinish7328902(arg1)
    print("OnSubFinish7328902")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328903(arg1)
    print("OnSubStart7328903")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 3)
end

function Quest73289:OnSubFinish7328903(arg1)
    print("OnSubFinish7328903")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest73289:OnSubStart7328904(arg1)
    print("OnSubStart7328904")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328904(arg1)
    print("OnSubFinish7328904")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328905(arg1)
    print("OnSubStart7328905")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328905(arg1)
    print("OnSubFinish7328905")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328906(arg1)
    print("OnSubStart7328906")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328906(arg1)
    print("OnSubFinish7328906")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328907(arg1)
    print("OnSubStart7328907")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328907(arg1)
    print("OnSubFinish7328907")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328908(arg1)
    print("OnSubStart7328908")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328908(arg1)
    print("OnSubFinish7328908")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328909(arg1)
    print("OnSubStart7328909")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328909(arg1)
    print("OnSubFinish7328909")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328910(arg1)
    print("OnSubStart7328910")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328910(arg1)
    print("OnSubFinish7328910")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328911(arg1)
    print("OnSubStart7328911")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328911(arg1)
    print("OnSubFinish7328911")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328912(arg1)
    print("OnSubStart7328912")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
    actorMgr:CreateActorWithPos("Q73289Trigger1", "Actor/Gadget/Q73289Trigger1", 70900002, 0, {x = 1032.027, y = 204.28, z = 6348.747}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73289:OnSubFinish7328912(arg1)
    print("OnSubFinish7328912")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328913(arg1)
    print("OnSubStart7328913")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328913(arg1)
    print("OnSubFinish7328913")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328914(arg1)
    print("OnSubStart7328914")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328914(arg1)
    print("OnSubFinish7328914")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328915(arg1)
    print("OnSubStart7328915")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
    actorMgr:CreateActorWithPos("Q73289Trigger2", "Actor/Gadget/Q73289Trigger2", 70900002, 0, {x = 932.649, y = 200.0, z = 6187.038}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73289:OnSubFinish7328915(arg1)
    print("OnSubFinish7328915")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328916(arg1)
    print("OnSubStart7328916")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328916(arg1)
    print("OnSubFinish7328916")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328917(arg1)
    print("OnSubStart7328917")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328917(arg1)
    print("OnSubFinish7328917")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328918(arg1)
    print("OnSubStart7328918")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
    actorMgr:CreateActorWithPos("Q73289Trigger3", "Actor/Gadget/Q73289Trigger3", 70900002, 0, {x = 892.541, y = 186.0, z = 6028.718}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73289:OnSubFinish7328918(arg1)
    print("OnSubFinish7328918")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest73289:OnSubStart7328919(arg1)
    print("OnSubStart7328919")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328919(arg1)
    print("OnSubFinish7328919")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328920(arg1)
    print("OnSubStart7328920")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328920(arg1)
    print("OnSubFinish7328920")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328921(arg1)
    print("OnSubStart7328921")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328921(arg1)
    print("OnSubFinish7328921")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328922(arg1)
    print("OnSubStart7328922")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328922(arg1)
    print("OnSubFinish7328922")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328923(arg1)
    print("OnSubStart7328923")
    actorMgr:CreateActorWithPos("Q73289Trigger4", "Actor/Gadget/Q73289Trigger4", 70900002, 0, {x = 744.733, y = 309.728, z = 5603.601}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73289:OnSubFinish7328923(arg1)
    print("OnSubFinish7328923")
end

function Quest73289:OnSubStart7328924(arg1)
    print("OnSubStart7328924")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328924(arg1)
    print("OnSubFinish7328924")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328925(arg1)
    print("OnSubStart7328925")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328925(arg1)
    print("OnSubFinish7328925")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328926(arg1)
    print("OnSubStart7328926")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328926(arg1)
    print("OnSubFinish7328926")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328927(arg1)
    print("OnSubStart7328927")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328927(arg1)
    print("OnSubFinish7328927")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328928(arg1)
    print("OnSubStart7328928")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328928(arg1)
    print("OnSubFinish7328928")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328929(arg1)
    print("OnSubStart7328929")
    self:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73289:OnSubFinish7328929(arg1)
    print("OnSubFinish7328929")
    self:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73289:OnSubStart7328930(arg1)
    print("OnSubStart7328930")
end

function Quest73289:OnSubFinish7328930(arg1)
    print("OnSubFinish7328930")
end

function Quest73289:OnSubStart7328931(arg1)
    print("OnSubStart7328931")
    actorMgr:CreateActorWithPos("Q73289Trigger5", "Actor/Gadget/Q73289Trigger5", 70900002, 0, {x = 1031.796, y = 204.162, z = 6348.342}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73289:OnSubFinish7328931(arg1)
    print("OnSubFinish7328931")
end

function Quest73289:OnSubStart7328932(arg1)
    print("OnSubStart7328932")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
end

function Quest73289:OnSubFinish7328932(arg1)
    print("OnSubFinish7328932")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

return Quest73289
