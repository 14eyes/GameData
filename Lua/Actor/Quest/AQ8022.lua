require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8022 = class("Quest8022", QuestActorProxy)
Quest8022.defaultAlias = "Quest8022"
local clientData
local this
local mainID
local actorAlias
local points

function Quest8022:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest8022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["802201"] = self.OnSubStart802201,
        ["802203"] = self.OnSubStart802203,
        ["802202"] = self.OnSubStart802202
    }
end

function Quest8022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["802201"] = self.OnSubFinish802201,
        ["802203"] = self.OnSubFinish802203,
        ["802202"] = self.OnSubFinish802202
    }
end

function Quest8022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["802201"] = self.OnSubFailed802201,
        ["802203"] = self.OnSubFailed802203,
        ["802202"] = self.OnSubFailed802202
    }
end

function Quest8022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest8022:OnSubStart802201(arg1)
    print("OnSubStart802201")
end

function Quest8022:OnSubFinish802201(arg1)
    print("OnSubFinish802201")
end

function Quest8022:OnSubFailed802201(arg1)
    print("OnSubFailed802201")
end

function Quest8022:OnSubStart802203(arg1)
    print("OnSubStart802203")
    actorMgr:CreateActorWithPos("Q802203Trigger1", "Actor/Gadget/Q802203Trigger1", 70900002, 0, points.Q802106_Trigger1.pos, points.Q802106_Trigger1.rot, true, false, 20224)
    actorMgr:CreateActorWithPos("Q802203Trigger2", "Actor/Gadget/Q802203Trigger2", 70900002, 0, points.Q802203Trigger2.pos, points.Q802203Trigger2.rot, true, false, 20224)
    actorMgr:CreateActorWithPos("Q802203Trigger3", "Actor/Gadget/Q802203Trigger3", 70900002, 0, points.Q802203Trigger3.pos, points.Q802203Trigger3.rot, true, false, 20224)
end

function Quest8022:OnSubFinish802203(arg1)
    print("OnSubFinish802203")
end

function Quest8022:OnSubFailed802203(arg1)
    print("OnSubFailed802203")
    this:ActorDestroy("Q802203Trigger1")
    this:ActorDestroy("Q802203Trigger2")
    this:ActorDestroy("Q802203Trigger3")
end

function Quest8022:OnSubStart802202(arg1)
    print("OnSubStart802202")
end

function Quest8022:OnSubFinish802202(arg1)
    print("OnSubFinish802202")
end

function Quest8022:OnSubFailed802202(arg1)
    print("OnSubFailed802202")
    local tbl = {}
    local n = 802107
    local v = 802108
    local n2 = 802109
    tbl[1] = 802106
    tbl[2] = n
    tbl[3] = v
    tbl[4] = n2
    local tbl2 = {802110}
    local tbl3 = {}
    local n3 = 802112
    tbl3[1] = 802111
    tbl3[2] = n3
    local tbl4 = {802113}
    local flag = false
    for i = 1, #tbl do
        if self:GetSubQuestState(tbl[i]) == 2 then
            globalActor:PlayerEnterDungeon(1288, 1210, false, nil, 0)
            flag = true
            break
        else
            if self:GetSubQuestState(tbl2[i]) == 2 then
                globalActor:PlayerEnterDungeonPoint(1288, 1210, 802202, 1)
                flag = true
                break
            else
                if self:GetSubQuestState(tbl3[i]) == 2 then
                    globalActor:PlayerEnterDungeonPoint(1288, 1210, 802202, 2)
                    flag = true
                    break
                else
                    if self:GetSubQuestState(tbl4[i]) == 2 then
                        globalActor:PlayerEnterDungeonPoint(1288, 1210, 802202, 3)
                        flag = true
                        break
                    end
                end
            end
        end
    end

    if flag == false then
        globalActor:PlayerEnterDungeon(1288, 1210, false, nil, 0)
    end
end

return Quest8022
