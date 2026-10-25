require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest428 = class("Quest428", QuestActorProxy)
Quest428.defaultAlias = "Quest428"
local Q428ClientConfig = require("Quest/Client/Q428ClientConfig")

local subIDs = Q428ClientConfig.SubIDs
local windData = Q428ClientConfig.WindData
local flag = false
local n = 0

function Quest428:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["42801"] = self.OnSubStart42801
    self.subStartHandlers["42802"] = self.OnSubStart42802
    self.subStartHandlers["42803"] = self.OnSubStart42803
end

function Quest428:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["42801"] = self.OnSubFinish42801
    self.subFinishHandlers["42802"] = self.OnSubFinish42802
    self.subFinishHandlers["42803"] = self.OnSubFinish42803
end

function Quest428:OnSubStart42801(arg1)
    print("42801 start:...")
end

function Quest428:OnSubStart42802(arg1)
    print("42802 start:...")
end

function Quest428:OnSubStart42803(arg1)
    print("42803 start:...")
    self:CheckHightOut()
end

function Quest428:CheckHight()
    print("check start:...")
    local avatarPos = actorUtils.GetAvatarPos()
    if avatarPos.y < 7 then
        flag = true
        local tbl = {x = 0, y = 0, z = 0}
        local v = avatarPos
        v.y = v.y - 10
        n = n + 1
        globalActor:SpawnGadget(windData.WindID, v, M.Dir2Euler(tbl), "Flow" .. tostring(n), 1016)
        globalActor:StartGuide("GuideDisableInput")
        self:CallDelay(2.1, self.DestroyFlow)
        print("Low Low:...")
    else
        flag = false
        print("High High:...")
    end

    if flag == true then
        self:CallDelay(2.5, self.CheckHightOut)
    else
        self:CallDelay(1, self.CheckHightOut)
    end
end

function Quest428:CheckHightOut()
    self:CheckHight()
end

function Quest428:DestroyFlow()
    self:UnSpawn("Flow" .. tostring(n))
end

function Quest428:AdvanceQuest()
    local actor = actorMgr:GetActor(Q428ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest428:OnSubFinish42801(arg1)
    print("OnFinished 42801")
end

function Quest428:OnSubFinish42802(arg1)
    print("OnFinished 42802")
end

function Quest428:OnSubFinish42803(arg1)
    print("OnFinished 42803")
end

function Quest428:Start() end
function Quest428:OnDestroy() end
return Quest428
