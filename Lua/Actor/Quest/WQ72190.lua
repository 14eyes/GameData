require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72190 = class("Quest72190", QuestActorProxy)
Quest72190.defaultAlias = "Quest72190"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72190:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72190:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7219001"] = self.OnSubStart7219001,
        ["7219014"] = self.OnSubStart7219014,
        ["7219008"] = self.OnSubStart7219008,
        ["7219009"] = self.OnSubStart7219009,
        ["7219010"] = self.OnSubStart7219010,
        ["7219011"] = self.OnSubStart7219011,
        ["7219012"] = self.OnSubStart7219012,
        ["7219013"] = self.OnSubStart7219013,
        ["7219002"] = self.OnSubStart7219002,
        ["7219007"] = self.OnSubStart7219007,
        ["7219003"] = self.OnSubStart7219003,
        ["7219004"] = self.OnSubStart7219004,
        ["7219005"] = self.OnSubStart7219005,
        ["7219006"] = self.OnSubStart7219006
    }
end

function Quest72190:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7219001"] = self.OnSubFinish7219001,
        ["7219014"] = self.OnSubFinish7219014,
        ["7219008"] = self.OnSubFinish7219008,
        ["7219009"] = self.OnSubFinish7219009,
        ["7219010"] = self.OnSubFinish7219010,
        ["7219011"] = self.OnSubFinish7219011,
        ["7219012"] = self.OnSubFinish7219012,
        ["7219013"] = self.OnSubFinish7219013,
        ["7219002"] = self.OnSubFinish7219002,
        ["7219007"] = self.OnSubFinish7219007,
        ["7219003"] = self.OnSubFinish7219003,
        ["7219004"] = self.OnSubFinish7219004,
        ["7219005"] = self.OnSubFinish7219005,
        ["7219006"] = self.OnSubFinish7219006
    }
end

function Quest72190:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7219001"] = self.OnSubFailed7219001,
        ["7219014"] = self.OnSubFailed7219014,
        ["7219008"] = self.OnSubFailed7219008,
        ["7219009"] = self.OnSubFailed7219009,
        ["7219010"] = self.OnSubFailed7219010,
        ["7219011"] = self.OnSubFailed7219011,
        ["7219012"] = self.OnSubFailed7219012,
        ["7219013"] = self.OnSubFailed7219013,
        ["7219002"] = self.OnSubFailed7219002,
        ["7219007"] = self.OnSubFailed7219007,
        ["7219003"] = self.OnSubFailed7219003,
        ["7219004"] = self.OnSubFailed7219004,
        ["7219005"] = self.OnSubFailed7219005,
        ["7219006"] = self.OnSubFailed7219006
    }
end

function Quest72190:Start()
    print("Start")
end

function Quest72190:OnDestroy()
    print("OnDestroy")
end

function Quest72190:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72190:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72190:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72190:OnSubStart7219001(arg1)
    print("OnSubStart7219001")
    actorMgr:CreateActorWithPos(datas.Q7219001Trigger_01_.alias, datas.Q7219001Trigger_01_.script, datas.Q7219001Trigger_01_.id, 0, datas.Q7219001Trigger_01_.point.pos, datas.Q7219001Trigger_01_.point.rot, true, false, 5)
end

function Quest72190:OnSubFinish7219001(arg1)
    print("OnSubFinish7219001")
end

function Quest72190:OnSubFailed7219001(arg1)
    print("OnSubFailed7219001")
end

function Quest72190:OnSubStart7219014(arg1)
    print("OnSubStart7219014")
    actorMgr:CreateActorWithPos(datas.Q7219014Trigger_02_.alias, datas.Q7219014Trigger_02_.script, datas.Q7219014Trigger_02_.id, 0, datas.Q7219014Trigger_02_.point.pos, datas.Q7219014Trigger_02_.point.rot, true, false, 5)
end

function Quest72190:OnSubFinish7219014(arg1)
    print("OnSubFinish7219014")
end

function Quest72190:OnSubFailed7219014(arg1)
    print("OnSubFailed7219014")
end

function Quest72190:OnSubStart7219008(arg1)
    print("OnSubStart7219008")
    actorMgr:CreateActorWithPos(datas.Q7219008Trigger_02_.alias, datas.Q7219008Trigger_02_.script, datas.Q7219008Trigger_02_.id, 0, datas.Q7219008Trigger_02_.point.pos, datas.Q7219008Trigger_02_.point.rot, true, false, 5)
end

function Quest72190:OnSubFinish7219008(arg1)
    print("OnSubFinish7219008")
end

function Quest72190:OnSubFailed7219008(arg1)
    print("OnSubFailed7219008")
end

function Quest72190:OnSubStart7219009(arg1)
    print("OnSubStart7219009")
end

function Quest72190:OnSubFinish7219009(arg1)
    print("OnSubFinish7219009")
end

function Quest72190:OnSubFailed7219009(arg1)
    print("OnSubFailed7219009")
end

function Quest72190:OnSubStart7219010(arg1)
    print("OnSubStart7219010")
end

function Quest72190:OnSubFinish7219010(arg1)
    print("OnSubFinish7219010")
end

function Quest72190:OnSubFailed7219010(arg1)
    print("OnSubFailed7219010")
end

function Quest72190:OnSubStart7219011(arg1)
    print("OnSubStart7219011")
end

function Quest72190:OnSubFinish7219011(arg1)
    print("OnSubFinish7219011")
end

function Quest72190:OnSubFailed7219011(arg1)
    print("OnSubFailed7219011")
end

function Quest72190:OnSubStart7219012(arg1)
    print("OnSubStart7219012")
end

function Quest72190:OnSubFinish7219012(arg1)
    print("OnSubFinish7219012")
end

function Quest72190:OnSubFailed7219012(arg1)
    print("OnSubFailed7219012")
end

function Quest72190:OnSubStart7219013(arg1)
    print("OnSubStart7219013")
    actorMgr:CreateActorWithPos(datas.Q7219013Trigger_07_.alias, datas.Q7219013Trigger_07_.script, datas.Q7219013Trigger_07_.id, 0, datas.Q7219013Trigger_07_.point.pos, datas.Q7219013Trigger_07_.point.rot, true, false, 5)
end

function Quest72190:OnSubFinish7219013(arg1)
    print("OnSubFinish7219013")
end

function Quest72190:OnSubFailed7219013(arg1)
    print("OnSubFailed7219013")
end

function Quest72190:OnSubStart7219002(arg1)
    print("OnSubStart7219002")
end

function Quest72190:OnSubFinish7219002(arg1)
    print("OnSubFinish7219002")
end

function Quest72190:OnSubFailed7219002(arg1)
    print("OnSubFailed7219002")
end

function Quest72190:OnSubStart7219007(arg1)
    print("OnSubStart7219007")
end

function Quest72190:OnSubFinish7219007(arg1)
    print("OnSubFinish7219007")
end

function Quest72190:OnSubFailed7219007(arg1)
    print("OnSubFailed7219007")
end

function Quest72190:OnSubStart7219003(arg1)
    print("OnSubStart7219003")
    actorMgr:CreateActorWithPos(datas.Q7219003Trigger_04_.alias, datas.Q7219003Trigger_04_.script, datas.Q7219003Trigger_04_.id, 0, datas.Q7219003Trigger_04_.point.pos, datas.Q7219003Trigger_04_.point.rot, true, false, 5)
end

function Quest72190:OnSubFinish7219003(arg1)
    print("OnSubFinish7219003")
end

function Quest72190:OnSubFailed7219003(arg1)
    print("OnSubFailed7219003")
end

function Quest72190:OnSubStart7219004(arg1)
    print("OnSubStart7219004")
    actorMgr:CreateActorWithPos(datas.Q7219004Trigger_05_.alias, datas.Q7219004Trigger_05_.script, datas.Q7219004Trigger_05_.id, 0, datas.Q7219004Trigger_05_.point.pos, datas.Q7219004Trigger_05_.point.rot, true, false, 5)
end

function Quest72190:OnSubFinish7219004(arg1)
    print("OnSubFinish7219004")
end

function Quest72190:OnSubFailed7219004(arg1)
    print("OnSubFailed7219004")
end

function Quest72190:OnSubStart7219005(arg1)
    print("OnSubStart7219005")
end

function Quest72190:OnSubFinish7219005(arg1)
    print("OnSubFinish7219005")
end

function Quest72190:OnSubFailed7219005(arg1)
    print("OnSubFailed7219005")
end

function Quest72190:OnSubStart7219006(arg1)
    print("OnSubStart7219006")
end

function Quest72190:OnSubFinish7219006(arg1)
    print("OnSubFinish7219006")
end

function Quest72190:OnSubFailed7219006(arg1)
    print("OnSubFailed7219006")
end

return Quest72190
