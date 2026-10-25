require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79078 = class("Quest79078", QuestActorProxy)
Quest79078.defaultAlias = "Quest79078"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest79078:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79078:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7907801"] = self.OnSubStart7907801}
end

function Quest79078:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7907801"] = self.OnSubFinish7907801}
end

function Quest79078:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79078:Start()
    print("Start")
end

function Quest79078:OnDestroy()
    print("OnDestroy")
end

function Quest79078:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79078:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79078:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79078:CheckSitPoint()
    print("CheckSitPoint")
    local tbl = {}
    local v = {}
    local n = 7907801
    v[1] = "DUMMY_POS 910008019"
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
                        actorUtils.FinishQuestID(false, 7907801)
                        Quest79078:RegisterStandingEvent()
                        return
                    end
                end
            end
        else
            print("[" .. i .. "]" .. "Not in any SitPoint")
        end
    end

    print("before standing")
    Quest79078:RegisterStandingEvent()
end

function Quest79078:RegisterSittingEvent()
    print("RegisterSittingEvent")
    Quest79078:CallOnAvatarSit(Quest79078.CheckSitPoint)
end

function Quest79078:RegisterStandingEvent()
    print("RegisterStandingEvent")
    Quest79078:CallOnAvatarStand(Quest79078.RegisterSittingEvent)
end

function Quest79078:OnSubStart7907801(arg1)
    print("OnSubStart7907801")
    this:RegisterSittingEvent()
end

function Quest79078:OnSubFinish7907801(arg1)
    print("OnSubFinish7907801")
end

return Quest79078
