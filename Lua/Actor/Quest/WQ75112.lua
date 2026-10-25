require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75112 = class("Quest75112", QuestActorProxy)
Quest75112.defaultAlias = "Quest75112"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75112:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75112:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7511201"] = self.OnSubStart7511201,
        ["7511202"] = self.OnSubStart7511202,
        ["7511203"] = self.OnSubStart7511203,
        ["7511204"] = self.OnSubStart7511204,
        ["7511205"] = self.OnSubStart7511205,
        ["7511206"] = self.OnSubStart7511206,
        ["7511207"] = self.OnSubStart7511207,
        ["7511208"] = self.OnSubStart7511208,
        ["7511209"] = self.OnSubStart7511209,
        ["7511210"] = self.OnSubStart7511210,
        ["7511211"] = self.OnSubStart7511211,
        ["7511212"] = self.OnSubStart7511212,
        ["7511213"] = self.OnSubStart7511213,
        ["7511214"] = self.OnSubStart7511214,
        ["7511215"] = self.OnSubStart7511215,
        ["7511216"] = self.OnSubStart7511216,
        ["7511217"] = self.OnSubStart7511217,
        ["7511218"] = self.OnSubStart7511218
    }
end

function Quest75112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7511201"] = self.OnSubFinish7511201,
        ["7511202"] = self.OnSubFinish7511202,
        ["7511203"] = self.OnSubFinish7511203,
        ["7511204"] = self.OnSubFinish7511204,
        ["7511205"] = self.OnSubFinish7511205,
        ["7511206"] = self.OnSubFinish7511206,
        ["7511207"] = self.OnSubFinish7511207,
        ["7511208"] = self.OnSubFinish7511208,
        ["7511209"] = self.OnSubFinish7511209,
        ["7511210"] = self.OnSubFinish7511210,
        ["7511211"] = self.OnSubFinish7511211,
        ["7511212"] = self.OnSubFinish7511212,
        ["7511213"] = self.OnSubFinish7511213,
        ["7511214"] = self.OnSubFinish7511214,
        ["7511215"] = self.OnSubFinish7511215,
        ["7511216"] = self.OnSubFinish7511216,
        ["7511217"] = self.OnSubFinish7511217,
        ["7511218"] = self.OnSubFinish7511218
    }
end

function Quest75112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75112:Start()
    print("Start")
end

function Quest75112:OnDestroy()
    print("OnDestroy")
end

function Quest75112:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75112:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75112:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75112:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest75112:OnSubStart7511201(arg1)
    print("OnSubStart7511201")
end

function Quest75112:OnSubFinish7511201(arg1)
    print("OnSubFinish7511201")
end

function Quest75112:OnSubStart7511202(arg1)
    print("OnSubStart7511202")
end

function Quest75112:OnSubFinish7511202(arg1)
    print("OnSubFinish7511202")
end

function Quest75112:OnSubStart7511203(arg1)
    print("OnSubStart7511203")
end

function Quest75112:OnSubFinish7511203(arg1)
    print("OnSubFinish7511203")
end

function Quest75112:OnSubStart7511204(arg1)
    print("OnSubStart7511204")
end

function Quest75112:OnSubFinish7511204(arg1)
    print("OnSubFinish7511204")
end

function Quest75112:OnSubStart7511205(arg1)
    print("OnSubStart7511205")
end

function Quest75112:OnSubFinish7511205(arg1)
    print("OnSubFinish7511205")
end

function Quest75112:OnSubStart7511206(arg1)
    print("OnSubStart7511206")
end

function Quest75112:OnSubFinish7511206(arg1)
    print("OnSubFinish7511206")
end

function Quest75112:OnSubStart7511207(arg1)
    print("OnSubStart7511207")
end

function Quest75112:OnSubFinish7511207(arg1)
    print("OnSubFinish7511207")
end

function Quest75112:OnSubStart7511208(arg1)
    print("OnSubStart7511208")
end

function Quest75112:OnSubFinish7511208(arg1)
    print("OnSubFinish7511208")
end

function Quest75112:OnSubStart7511209(arg1)
    print("OnSubStart7511209")
end

function Quest75112:OnSubFinish7511209(arg1)
    print("OnSubFinish7511209")
end

function Quest75112:OnSubStart7511210(arg1)
    print("OnSubStart7511210")
end

function Quest75112:OnSubFinish7511210(arg1)
    print("OnSubFinish7511210")
end

function Quest75112:OnSubStart7511211(arg1)
    print("OnSubStart7511211")
end

function Quest75112:OnSubFinish7511211(arg1)
    print("OnSubFinish7511211")
end

function Quest75112:OnSubStart7511212(arg1)
    print("OnSubStart7511212")
end

function Quest75112:OnSubFinish7511212(arg1)
    print("OnSubFinish7511212")
end

function Quest75112:OnSubStart7511213(arg1)
    print("OnSubStart7511213")
end

function Quest75112:OnSubFinish7511213(arg1)
    print("OnSubFinish7511213")
end

function Quest75112:OnSubStart7511214(arg1)
    print("OnSubStart7511214")
end

function Quest75112:OnSubFinish7511214(arg1)
    print("OnSubFinish7511214")
end

function Quest75112:OnSubStart7511215(arg1)
    print("OnSubStart7511215")
    this:DailyNpcSafeHideSelf("Npc6205", 1, true)
end

function Quest75112:OnSubFinish7511215(arg1)
    print("OnSubFinish7511215")
    this:LightNotifyTo("Npc6205", 0, true)
end

function Quest75112:OnSubStart7511216(arg1)
    print("OnSubStart7511216")
end

function Quest75112:OnSubFinish7511216(arg1)
    print("OnSubFinish7511216")
end

function Quest75112:OnSubStart7511217(arg1)
    print("OnSubStart7511217")
end

function Quest75112:OnSubFinish7511217(arg1)
    print("OnSubFinish7511217")
end

function Quest75112:OnSubStart7511218(arg1)
    print("OnSubStart7511218")
end

function Quest75112:OnSubFinish7511218(arg1)
    print("OnSubFinish7511218")
end

return Quest75112
