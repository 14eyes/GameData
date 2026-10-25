require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74093 = class("Quest74093", QuestActorProxy)
Quest74093.defaultAlias = "Quest74093"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74093:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74093:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7409304"] = self.OnSubStart7409304,
        ["7409301"] = self.OnSubStart7409301,
        ["7409302"] = self.OnSubStart7409302,
        ["7409303"] = self.OnSubStart7409303,
        ["7409305"] = self.OnSubStart7409305
    }
end

function Quest74093:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7409304"] = self.OnSubFinish7409304,
        ["7409301"] = self.OnSubFinish7409301,
        ["7409302"] = self.OnSubFinish7409302,
        ["7409303"] = self.OnSubFinish7409303,
        ["7409305"] = self.OnSubFinish7409305
    }
end

function Quest74093:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74093:Start()
    print("Start")
end

function Quest74093:OnDestroy()
    print("OnDestroy")
end

function Quest74093:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74093:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74093:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74093:RegisterStandingFailedEvent()
    print("RegisterStandingFailedEvent")
    Quest74093:CallOnAvatarStand(Quest74093.FailQuest7409303)
end

function Quest74093:RegisterSittingEvent()
    print("RegisterSittingEvent")
    Quest74093:CallOnAvatarSit(Quest74093.CheckSitPoint)
end

function Quest74093:RegisterStandingEvent()
    print("RegisterStandingEvent")
    Quest74093:CallOnAvatarStand(Quest74093.RegisterSittingEvent)
end

function Quest74093:CheckSitPoint()
    print("CheckSitPoint")
    local tbl = {}
    local v = {}
    local n = 7409302
    v[1] = "SitPoint_7409302"
    v[2] = n
    tbl[1] = v
    print("-----ReadytoSit-----")
    for i = 1, #tbl do
        print("SitPointName = " .. tbl[i][1])
        local pos = sceneData:GetDummyPoint(3, tbl[i][1]).pos
        local avatarPos = actorUtils.GetAvatarPos()
        print("[" .. i .. "]" .. "SitPos[x=" .. pos.x .. ",z=" .. pos.z .. "]  PlayerPos[x=" .. avatarPos.x .. ",z=" .. avatarPos.z .. "]")
        if math.abs(pos.x - avatarPos.x) < 10 then
            if math.abs(pos.z - avatarPos.z) < 50 then
                if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                    if 3 == sceneData.currSceneID then
                        print("[" .. i .. "]" .. "FinishQuest = " .. tbl[i][2])
                        actorUtils.FinishQuestID(false, tbl[i][2])
                        return
                    end
                end
            end
        else
            print("[" .. i .. "]" .. "Not in any SitPoint")
        end
    end

    print("beforce standing")
    Quest74093:RegisterStandingEvent()
end

function Quest74093:FailQuest7409303()
    print("FailQuest7409303")
    actorUtils.FinishQuestID(false, 7409303)
end

function Quest74093:OnSubStart7409304(arg1)
    print("OnSubStart7409304")
    actorMgr:CreateActorWithPos("Q7409304Trigger", "Actor/Gadget/Q7409304Trigger", 70900002, 0, {x = 4388.85, y = 561.792, z = 3551.132}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74093:OnSubFinish7409304(arg1)
    print("OnSubFinish7409304")
end

function Quest74093:OnSubStart7409301(arg1)
    print("OnSubStart7409301")
end

function Quest74093:OnSubFinish7409301(arg1)
    print("OnSubFinish7409301")
end

function Quest74093:OnSubStart7409302(arg1)
    print("OnSubStart7409302")
    this:RegisterSittingEvent()
end

function Quest74093:OnSubFinish7409302(arg1)
    print("OnSubFinish7409302")
end

function Quest74093:OnSubStart7409303(arg1)
    print("OnSubStart7409303")
    this:RegisterStandingFailedEvent()
end

function Quest74093:OnSubFinish7409303(arg1)
    print("OnSubFinish7409303")
end

function Quest74093:OnSubStart7409305(arg1)
    print("OnSubStart7409305")
end

function Quest74093:OnSubFinish7409305(arg1)
    print("OnSubFinish7409305")
end

return Quest74093
