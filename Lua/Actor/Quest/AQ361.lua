require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest361 = class("Quest361", QuestActorProxy)
Quest361.defaultAlias = "Quest361"
local Q361ClientConfig = require("Quest/Client/Q361ClientConfig")

function Quest361:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["36100"] = self.OnSubStart36100
    self.subStartHandlers["36101"] = self.OnSubStart36101
end

function Quest361:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["36100"] = self.OnSubFinish36100
    self.subFinishHandlers["36101"] = self.OnSubFinish36101
end

function Quest361:CameraMove()
    self:EnterSceneLookCameraByAlias("LookAt_Dragon", 1, 3, true, false)
    globalActor:StopLocalAvatar()
    globalActor:EnablePlayerInput(false)
    self:CallDelay(2, self.OnEnableInput)
end

function Quest361:OnDragonFly()
    self:CallDelay(6, self.CameraMove)
    self:CallDelay(8, self.PaimonQ361Narrator)
end

function Quest361:OnEnableInput()
    print("361 Finish: Enable Player Input")
    globalActor:EnablePlayerInput(true)
end

function Quest361:PaimonQ361Narrator()
    self:NarratorOnlyTaskLegacy(Q361ClientConfig.PaimonNarrator, nil, "Story")
end

function Quest361:AutoFinishQuest()
    local actor = actorMgr:GetActor(Q361ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest361:OnSubStart36100(arg1)
    print("36100 Start: Trigger Create")
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q361DragonTriggerCenter").pos
    if 57 < M.Dist(pos, avatarPos) then
        local actor = actorMgr:GetActor(Q361ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end

    actorMgr:CreateActorWithPos("DragonTrigger", "Actor/Gadget/DragonTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q361DragonTriggerCenter").pos, sceneData:GetDummyPoint(3, "Q361DragonTriggerCenter").rot, true, false)
end

function Quest361:OnSubFinish36100(arg1)
    print("36100 Finish: Ca_Quest_MQ361_DragonFlyT_Test")
    local avatarPos = actorUtils.GetAvatarPos()
    self:PlayFreeCutscene({
        type = CutsceneType.TIME_LINE_PREFAB,
        roleSheetPath = "",
        resPath = "ART/CameraAni/Quest/Ca_Quest_MQ361_DragonFlyT_Test",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {x = avatarPos.x, y = avatarPos.y + 15, z = avatarPos.z + 10},
        useTargetPos = true,
        targetPos = {x = 2450, y = 200, z = -1174},
        syncLoad = false
    }, self, function(arg1)
        arg1:ExitSceneLookCamera()
    end, self.OnDragonFly)
end

function Quest361:OnSubStart36101(arg1)
    print("36101 Start: Auto Finish Quest After Period")
    self:CallDelay(10, self.AutoFinishQuest)
end

function Quest361:Start() end
function Quest361:OnDestroy() end
return Quest361
