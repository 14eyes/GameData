require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14034 = class("Quest14034", QuestActorProxy)
Quest14034.defaultAlias = "Quest14034"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest14034:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest14034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1403401"] = self.OnSubStart1403401,
        ["1403402"] = self.OnSubStart1403402,
        ["1403404"] = self.OnSubStart1403404,
        ["1403405"] = self.OnSubStart1403405,
        ["1403406"] = self.OnSubStart1403406,
        ["1403407"] = self.OnSubStart1403407,
        ["1403408"] = self.OnSubStart1403408,
        ["1403409"] = self.OnSubStart1403409,
        ["1403410"] = self.OnSubStart1403410,
        ["1403411"] = self.OnSubStart1403411,
        ["1403403"] = self.OnSubStart1403403,
        ["1403412"] = self.OnSubStart1403412
    }
end

function Quest14034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1403401"] = self.OnSubFinish1403401,
        ["1403402"] = self.OnSubFinish1403402,
        ["1403404"] = self.OnSubFinish1403404,
        ["1403405"] = self.OnSubFinish1403405,
        ["1403406"] = self.OnSubFinish1403406,
        ["1403407"] = self.OnSubFinish1403407,
        ["1403408"] = self.OnSubFinish1403408,
        ["1403409"] = self.OnSubFinish1403409,
        ["1403410"] = self.OnSubFinish1403410,
        ["1403411"] = self.OnSubFinish1403411,
        ["1403403"] = self.OnSubFinish1403403,
        ["1403412"] = self.OnSubFinish1403412
    }
end

function Quest14034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1403401"] = self.OnSubFailed1403401,
        ["1403402"] = self.OnSubFailed1403402,
        ["1403404"] = self.OnSubFailed1403404,
        ["1403405"] = self.OnSubFailed1403405,
        ["1403406"] = self.OnSubFailed1403406,
        ["1403407"] = self.OnSubFailed1403407,
        ["1403408"] = self.OnSubFailed1403408,
        ["1403409"] = self.OnSubFailed1403409,
        ["1403410"] = self.OnSubFailed1403410,
        ["1403411"] = self.OnSubFailed1403411,
        ["1403403"] = self.OnSubFailed1403403,
        ["1403412"] = self.OnSubFailed1403412
    }
end

function Quest14034:Start()
    print("Start")
end

function Quest14034:OnDestroy()
    print("OnDestroy")
end

function Quest14034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14034:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14034:OnSubStart1403401(arg1)
    print("OnSubStart1403401")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1077.id, 1403401, 0, 17, 1)
end

function Quest14034:OnSubFinish1403401(arg1)
    print("OnSubFinish1403401")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
end

function Quest14034:OnSubFailed1403401(arg1)
    print("OnSubFailed1403401")
end

function Quest14034:OnSubStart1403402(arg1)
    print("OnSubStart1403402")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1077.id, 1403402, 0, 20, 1)
end

function Quest14034:OnSubFinish1403402(arg1)
    print("OnSubFinish1403402")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 1094)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData14034, nil, nil, nil)
end

function Quest14034:OnSubFailed1403402(arg1)
    print("OnSubFailed1403402")
end

function Quest14034:OnSubStart1403404(arg1)
    print("OnSubStart1403404")
end

function Quest14034:OnSubFinish1403404(arg1)
    print("OnSubFinish1403404")
end

function Quest14034:OnSubFailed1403404(arg1)
    print("OnSubFailed1403404")
end

function Quest14034:OnSubStart1403405(arg1)
    print("OnSubStart1403405")
end

function Quest14034:OnSubFinish1403405(arg1)
    print("OnSubFinish1403405")
end

function Quest14034:OnSubFailed1403405(arg1)
    print("OnSubFailed1403405")
end

function Quest14034:OnSubStart1403406(arg1)
    print("OnSubStart1403406")
end

function Quest14034:OnSubFinish1403406(arg1)
    print("OnSubFinish1403406")
end

function Quest14034:OnSubFailed1403406(arg1)
    print("OnSubFailed1403406")
end

function Quest14034:OnSubStart1403407(arg1)
    print("OnSubStart1403407")
end

function Quest14034:OnSubFinish1403407(arg1)
    print("OnSubFinish1403407")
end

function Quest14034:OnSubFailed1403407(arg1)
    print("OnSubFailed1403407")
end

function Quest14034:OnSubStart1403408(arg1)
    print("OnSubStart1403408")
end

function Quest14034:OnSubFinish1403408(arg1)
    print("OnSubFinish1403408")
end

function Quest14034:OnSubFailed1403408(arg1)
    print("OnSubFailed1403408")
end

function Quest14034:OnSubStart1403409(arg1)
    print("OnSubStart1403409")
end

function Quest14034:OnSubFinish1403409(arg1)
    print("OnSubFinish1403409")
end

function Quest14034:OnSubFailed1403409(arg1)
    print("OnSubFailed1403409")
end

function Quest14034:OnSubStart1403410(arg1)
    print("OnSubStart1403410")
end

function Quest14034:OnSubFinish1403410(arg1)
    print("OnSubFinish1403410")
end

function Quest14034:OnSubFailed1403410(arg1)
    print("OnSubFailed1403410")
end

function Quest14034:OnSubStart1403411(arg1)
    print("OnSubStart1403411")
end

function Quest14034:OnSubFinish1403411(arg1)
    print("OnSubFinish1403411")
end

function Quest14034:OnSubFailed1403411(arg1)
    print("OnSubFailed1403411")
end

function Quest14034:OnSubStart1403403(arg1)
    print("OnSubStart1403403")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1077.id, 1403403, 0, 15, 1)
end

function Quest14034:OnSubFinish1403403(arg1)
    print("OnSubFinish1403403")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
end

function Quest14034:OnSubFailed1403403(arg1)
    print("OnSubFailed1403403")
end

function Quest14034:OnSubStart1403412(arg1)
    print("OnSubStart1403412")
    actorUtils.FinishQuestID(false, 1403412)
end

function Quest14034:OnSubFinish1403412(arg1)
    print("OnSubFinish1403412")
end

function Quest14034:OnSubFailed1403412(arg1)
    print("OnSubFailed1403412")
end

return Quest14034
