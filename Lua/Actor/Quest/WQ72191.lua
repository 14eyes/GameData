require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72191 = class("Quest72191", QuestActorProxy)
Quest72191.defaultAlias = "Quest72191"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72191:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72191:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7219101"] = self.OnSubStart7219101,
        ["7219102"] = self.OnSubStart7219102,
        ["7219103"] = self.OnSubStart7219103,
        ["7219104"] = self.OnSubStart7219104,
        ["7219105"] = self.OnSubStart7219105
    }
end

function Quest72191:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7219101"] = self.OnSubFinish7219101,
        ["7219102"] = self.OnSubFinish7219102,
        ["7219103"] = self.OnSubFinish7219103,
        ["7219104"] = self.OnSubFinish7219104,
        ["7219105"] = self.OnSubFinish7219105
    }
end

function Quest72191:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7219101"] = self.OnSubFailed7219101,
        ["7219102"] = self.OnSubFailed7219102,
        ["7219103"] = self.OnSubFailed7219103,
        ["7219104"] = self.OnSubFailed7219104,
        ["7219105"] = self.OnSubFailed7219105
    }
end

function Quest72191:Start()
    print("Start")
end

function Quest72191:OnDestroy()
    print("OnDestroy")
end

function Quest72191:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72191:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72191:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72191:OnSubStart7219101(arg1)
    print("OnSubStart7219101")
    actorMgr:CreateActorWithPos(datas.Q7219101Trigger_01_.alias, datas.Q7219101Trigger_01_.script, datas.Q7219101Trigger_01_.id, 0, datas.Q7219101Trigger_01_.point.pos, datas.Q7219101Trigger_01_.point.rot, true, false, 5)
end

function Quest72191:OnSubFinish7219101(arg1)
    print("OnSubFinish7219101")
end

function Quest72191:OnSubFailed7219101(arg1)
    print("OnSubFailed7219101")
end

function Quest72191:OnSubStart7219102(arg1)
    print("OnSubStart7219102")
end

function Quest72191:OnSubFinish7219102(arg1)
    print("OnSubFinish7219102")
end

function Quest72191:OnSubFailed7219102(arg1)
    print("OnSubFailed7219102")
end

function Quest72191:OnSubStart7219103(arg1)
    print("OnSubStart7219103")
    actorMgr:CreateActorWithPos(datas.Q7219103Trigger_03_.alias, datas.Q7219103Trigger_03_.script, datas.Q7219103Trigger_03_.id, 0, datas.Q7219103Trigger_03_.point.pos, datas.Q7219103Trigger_03_.point.rot, true, false, 5)
end

function Quest72191:OnSubFinish7219103(arg1)
    print("OnSubFinish7219103")
end

function Quest72191:OnSubFailed7219103(arg1)
    print("OnSubFailed7219103")
end

function Quest72191:OnSubStart7219104(arg1)
    print("OnSubStart7219104")
end

function Quest72191:OnSubFinish7219104(arg1)
    print("OnSubFinish7219104")
end

function Quest72191:OnSubFailed7219104(arg1)
    print("OnSubFailed7219104")
end

function Quest72191:OnSubStart7219105(arg1)
    print("OnSubStart7219105")
end

function Quest72191:OnSubFinish7219105(arg1)
    print("OnSubFinish7219105")
end

function Quest72191:OnSubFailed7219105(arg1)
    print("OnSubFailed7219105")
end

return Quest72191
