require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79077 = class("Quest79077", QuestActorProxy)
Quest79077.defaultAlias = "Quest79077"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest79077:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79077:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7907701"] = self.OnSubStart7907701}
end

function Quest79077:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7907701"] = self.OnSubFinish7907701}
end

function Quest79077:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79077:Start()
    print("Start")
end

function Quest79077:OnDestroy()
    print("OnDestroy")
end

function Quest79077:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79077:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79077:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79077:CheckSitPoint()
    print("CheckSitPoint")
    local tbl = {}
    local v = {}
    local n = 7907701
    v[1] = "DUMMY_POS 910001108"
    v[2] = n
    tbl[1] = v
    print("-----ReadytoSit-----")
    for i = 1, #tbl do
        print("SitPointName = " .. tbl[i][1])
        local pos = sceneData:GetDummyPoint(100, tbl[i][1]).pos
        local avatarPos = actorUtils.GetAvatarPos()
        print("[" .. i .. "]" .. " SitPos[x=" .. pos.x .. " , z=" .. pos.z .. "]   PlayerPos[x=" .. avatarPos.x .. " , z=" .. avatarPos.z .. "]")
        if math.abs(pos.x - avatarPos.x) < 3 then
            if math.abs(pos.z - avatarPos.z) < 3 then
                if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                    if 100 == sceneData.currSceneID then
                        print("[" .. i .. "]" .. "FinishQuest = " .. tbl[i][2])
                        actorUtils.FinishQuestID(false, 7907701)
                        Quest79077:RegisterStandingEvent()
                        return
                    end
                end
            end
        else
            print("[" .. i .. "]" .. "Not in any SitPoint")
        end
    end

    print("before standing")
    Quest79077:RegisterStandingEvent()
end

function Quest79077:RegisterSittingEvent()
    print("RegisterSittingEvent")
    Quest79077:CallOnAvatarSit(Quest79077.CheckSitPoint)
end

function Quest79077:RegisterStandingEvent()
    print("RegisterStandingEvent")
    Quest79077:CallOnAvatarStand(Quest79077.RegisterSittingEvent)
end

function Quest79077:OnSubStart7907701(arg1)
    print("OnSubStart7907701")
    this:RegisterSittingEvent()
end

function Quest79077:OnSubFinish7907701(arg1)
    print("OnSubFinish7907701")
end

return Quest79077
