require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79000 = class("Quest79000", QuestActorProxy)
Quest79000.defaultAlias = "Quest79000"
local clientData
local mainID
local actorAlias
local subIDs
local n = 0

function Quest79000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7900001"] = self.OnSubStart7900001,
        ["7900002"] = self.OnSubStart7900002,
        ["7900003"] = self.OnSubStart7900003,
        ["7900008"] = self.OnSubStart7900008,
        ["7900009"] = self.OnSubStart7900009,
        ["7900006"] = self.OnSubStart7900006,
        ["7900007"] = self.OnSubStart7900007,
        ["7900004"] = self.OnSubStart7900004,
        ["7900005"] = self.OnSubStart7900005
    }
end

function Quest79000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7900001"] = self.OnSubFinish7900001,
        ["7900002"] = self.OnSubFinish7900002,
        ["7900003"] = self.OnSubFinish7900003,
        ["7900008"] = self.OnSubFinish7900008,
        ["7900009"] = self.OnSubFinish7900009,
        ["7900006"] = self.OnSubFinish7900006,
        ["7900007"] = self.OnSubFinish7900007,
        ["7900004"] = self.OnSubFinish7900004,
        ["7900005"] = self.OnSubFinish7900005
    }
end

function Quest79000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7900001"] = self.OnSubFailed7900001,
        ["7900002"] = self.OnSubFailed7900002,
        ["7900003"] = self.OnSubFailed7900003,
        ["7900008"] = self.OnSubFailed7900008,
        ["7900009"] = self.OnSubFailed7900009,
        ["7900006"] = self.OnSubFailed7900006,
        ["7900007"] = self.OnSubFailed7900007,
        ["7900004"] = self.OnSubFailed7900004,
        ["7900005"] = self.OnSubFailed7900005
    }
end

function Quest79000:Start()
    print("Start")
end

function Quest79000:OnDestroy()
    print("OnDestroy")
end

function Quest79000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest79000:OnSubStart7900001(arg1)
    print("OnSubStart7900001")
end

function Quest79000:OnSubFinish7900001(arg1)
    print("OnSubFinish7900001")
end

function Quest79000:OnSubFailed7900001(arg1)
    print("OnSubFailed7900001")
end

function Quest79000:OnSubStart7900002(arg1)
    print("OnSubStart7900002")
end

function Quest79000:OnSubFinish7900002(arg1)
    print("OnSubFinish7900002")
end

function Quest79000:OnSubFailed7900002(arg1)
    print("OnSubFailed7900002")
end

function Quest79000:OnSubStart7900003(arg1)
    print("OnSubStart7900003")
    self:SetQuestVar(79000, 0, 0)
    n = 0
end

function Quest79000:OnSubFinish7900003(arg1)
    print("OnSubFinish7900003")
end

function Quest79000:OnSubFailed7900003(arg1)
    print("OnSubFailed7900003")
end

function Quest79000:OnSubStart7900004(arg1)
    print("OnSubStart7900004")
end

function Quest79000:OnSubFinish7900004(arg1)
    print("OnSubFinish7900004")
end

function Quest79000:OnSubFailed7900004(arg1)
    print("OnSubFailed7900004")
end

function Quest79000:OnSubStart7900005(arg1)
    print("OnSubStart7900005")
end

function Quest79000:OnSubFinish7900005(arg1)
    print("OnSubFinish7900005")
end

function Quest79000:OnSubFailed7900005(arg1)
    print("OnSubFailed7900005")
end

function Quest79000:OnSubStart7900006(arg1)
    print("OnSubStart7900006")
end

function Quest79000:OnSubFinish7900006(arg1)
    print("OnSubFinish7900006")
end

function Quest79000:OnSubFailed7900006(arg1)
    print("OnSubFailed7900006")
end

function Quest79000:OnSubStart7900007(arg1)
    print("OnSubStart7900007")
end

function Quest79000:OnSubFinish7900007(arg1)
    print("OnSubFinish7900007")
end

function Quest79000:OnSubFailed7900007(arg1)
    print("OnSubFailed7900007")
end

function Quest79000:OnSubStart7900008(arg1)
    print("OnSubStart7900008")
end

function Quest79000:OnSubFinish7900008(arg1)
    print("OnSubFinish7900008")
end

function Quest79000:OnSubFailed7900008(arg1)
    print("OnSubFailed7900008")
end

function Quest79000:OnSubStart7900009(arg1)
    print("OnSubStart7900009")
end

function Quest79000:OnSubFinish7900009(arg1)
    print("OnSubFinish7900009")
end

function Quest79000:OnSubFailed7900009(arg1)
    print("OnSubFailed7900009")
end

function Quest79000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        n = n + 1
        print("Talk 7900001 Invoke")
    end

    if arg1 == 2 then
        n = n + 1
        print("Talk 7900002 Invoke")
    end

    if arg1 == 3 then
        n = n + 1
        print("Talk 7900003 Invoke")
    end

    if arg1 == 4 then
        n = n + 1
        print("Talk 7900004 Invoke")
        print("key = " .. n)
        if n == 4 then
            if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                print("T7900003 success")
                self:SetQuestVar(7900003, 0, 1)
            end
        else
            if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                print("T7900003 fail")
                self:SetQuestVar(7900003, 0, 2)
            end
        end
    end

    if arg1 == 5 then
        print("Talk 7900004 Invoke fail")
        print("key = " .. n)
        if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
            print("T7900008 fail")
            self:SetQuestVar(7900003, 0, 2)
        end
    end
end

return Quest79000
