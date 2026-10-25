require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77121 = class("Quest77121", QuestActorProxy)
Quest77121.defaultAlias = "Quest77121"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest77121:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest77121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7712101"] = self.OnSubStart7712101,
        ["7712108"] = self.OnSubStart7712108,
        ["7712109"] = self.OnSubStart7712109,
        ["7712102"] = self.OnSubStart7712102,
        ["7712103"] = self.OnSubStart7712103,
        ["7712104"] = self.OnSubStart7712104,
        ["7712105"] = self.OnSubStart7712105,
        ["7712106"] = self.OnSubStart7712106,
        ["7712107"] = self.OnSubStart7712107
    }
end

function Quest77121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7712101"] = self.OnSubFinish7712101,
        ["7712108"] = self.OnSubFinish7712108,
        ["7712109"] = self.OnSubFinish7712109,
        ["7712102"] = self.OnSubFinish7712102,
        ["7712103"] = self.OnSubFinish7712103,
        ["7712104"] = self.OnSubFinish7712104,
        ["7712105"] = self.OnSubFinish7712105,
        ["7712106"] = self.OnSubFinish7712106,
        ["7712107"] = self.OnSubFinish7712107
    }
end

function Quest77121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7712101"] = self.OnSubFailed7712101,
        ["7712108"] = self.OnSubFailed7712108,
        ["7712102"] = self.OnSubFailed7712102,
        ["7712103"] = self.OnSubFailed7712103,
        ["7712104"] = self.OnSubFailed7712104,
        ["7712105"] = self.OnSubFailed7712105,
        ["7712106"] = self.OnSubFailed7712106,
        ["7712107"] = self.OnSubFailed7712107
    }
end

function Quest77121:Start()
    print("Start")
end

function Quest77121:OnDestroy()
    print("OnDestroy")
end

function Quest77121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77121:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77121:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77121:OnSubStart7712101(arg1)
    print("OnSubStart7712101")
end

function Quest77121:OnSubFinish7712101(arg1)
    print("OnSubFinish7712101")
end

function Quest77121:OnSubFailed7712101(arg1)
    print("OnSubFailed7712101")
    this:RecycleAllRes()
end

function Quest77121:OnSubStart7712108(arg1)
    print("OnSubStart7712108")
end

function Quest77121:OnSubFinish7712108(arg1)
    print("OnSubFinish7712108")
    this:TransmitPlayerByData(arg1, 5, datas.TransmitData, function(arg1)
        this:AfterMainPageActiveSafeCall(nil)
    end, nil, nil)
end

function Quest77121:OnSubFailed7712108(arg1)
    print("OnSubFailed7712108")
    this:RecycleAllRes()
end

function Quest77121:OnSubStart7712109(arg1)
    print("OnSubStart7712109")
    this:CallDelayByQuest("", 0.3, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7712109})
    end)
end

function Quest77121:OnSubFinish7712109(arg1)
    print("OnSubFinish7712109")
end

function Quest77121:OnSubStart7712102(arg1)
    print("OnSubStart7712102")
end

function Quest77121:OnSubFinish7712102(arg1)
    print("OnSubFinish7712102")
end

function Quest77121:OnSubFailed7712102(arg1)
    print("OnSubFailed7712102")
    this:RecycleAllRes()
end

function Quest77121:OnSubStart7712103(arg1)
    print("OnSubStart7712103")
end

function Quest77121:OnSubFinish7712103(arg1)
    print("OnSubFinish7712103")
end

function Quest77121:OnSubFailed7712103(arg1)
    print("OnSubFailed7712103")
    this:RecycleAllRes()
end

function Quest77121:OnSubStart7712104(arg1)
    print("OnSubStart7712104")
end

function Quest77121:OnSubFinish7712104(arg1)
    print("OnSubFinish7712104")
end

function Quest77121:OnSubFailed7712104(arg1)
    print("OnSubFailed7712104")
    this:RecycleAllRes()
end

function Quest77121:OnSubStart7712105(arg1)
    print("OnSubStart7712105")
end

function Quest77121:OnSubFinish7712105(arg1)
    print("OnSubFinish7712105")
end

function Quest77121:OnSubFailed7712105(arg1)
    print("OnSubFailed7712105")
    this:RecycleAllRes()
end

function Quest77121:OnSubStart7712106(arg1)
    print("OnSubStart7712106")
end

function Quest77121:OnSubFinish7712106(arg1)
    print("OnSubFinish7712106")
end

function Quest77121:OnSubFailed7712106(arg1)
    print("OnSubFailed7712106")
    this:RecycleAllRes()
end

function Quest77121:OnSubStart7712107(arg1)
    print("OnSubStart7712107")
end

function Quest77121:OnSubFinish7712107(arg1)
    print("OnSubFinish7712107")
end

function Quest77121:OnSubFailed7712107(arg1)
    print("OnSubFailed7712107")
    this:RecycleAllRes()
end

return Quest77121
