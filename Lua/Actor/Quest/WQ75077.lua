require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75077 = class("Quest75077", QuestActorProxy)
Quest75077.defaultAlias = "Quest75077"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75077:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75077:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7507701"] = self.OnSubStart7507701, ["7507702"] = self.OnSubStart7507702}
end

function Quest75077:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7507701"] = self.OnSubFinish7507701, ["7507702"] = self.OnSubFinish7507702}
end

function Quest75077:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75077:Start()
    print("Start")
end

function Quest75077:OnDestroy()
    print("OnDestroy")
end

function Quest75077:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75077:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75077:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75077:CheckSitPoint()
    print("CheckSitPoint")
    local tbl = {}
    local v = {}
    local n = 7507702
    v[1] = "SitPoint_75077"
    v[2] = n
    tbl[1] = v
    print("-----ReadytoSit-----")
    for i = 1, #tbl do
        print("SitPointName = " .. tbl[i][1])
        local pos = sceneData:GetDummyPoint(3, tbl[i][1]).pos
        local avatarPos = actorUtils.GetAvatarPos()
        print("[" .. i .. "]" .. " SitPos[x=" .. pos.x .. " , z=" .. pos.z .. "]   PlayerPos[x=" .. avatarPos.x .. " , z=" .. avatarPos.z .. "]")
        if math.abs(pos.x - avatarPos.x) < 1 then
            if math.abs(pos.z - avatarPos.z) < 1 then
                if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                    if 3 == sceneData.currSceneID then
                        print("[" .. i .. "]" .. "FinishQuest = " .. tbl[i][2])
                        actorUtils.FinishQuestID(false, 7507702)
                        Quest75077:RegisterStandingEvent()
                        return
                    end
                end
            end
        else
            print("[" .. i .. "]" .. "Not in any SitPoint")
        end
    end

    print("before standing")
    Quest75077:RegisterStandingEvent()
end

function Quest75077:RegisterSittingEvent()
    print("RegisterSittingEvent")
    Quest75077:CallOnAvatarSit(Quest75077.CheckSitPoint)
end

function Quest75077:RegisterStandingEvent()
    print("RegisterStandingEvent")
    Quest75077:CallOnAvatarStand(Quest75077.RegisterSittingEvent)
end

function Quest75077:OnSubStart7507701(arg1)
    print("OnSubStart7507701")
end

function Quest75077:OnSubFinish7507701(arg1)
    print("OnSubFinish7507701")
end

function Quest75077:OnSubStart7507702(arg1)
    print("OnSubStart7507702")
    this:RegisterSittingEvent()
end

function Quest75077:OnSubFinish7507702(arg1)
    print("OnSubFinish7507702")
end

return Quest75077
