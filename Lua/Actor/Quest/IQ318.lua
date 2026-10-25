require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest318 = class("Quest318", QuestActorProxy)
Quest318.defaultAlias = "Quest318"
local subIDs = require("Quest/Client/Q318ClientConfig").SubIDs
local DailyNPCManager = require("Actor/DailyNPCManager")

local tbl = {}
tbl.Alias = "Npc10092"
tbl.Script = "Actor/Npc/TempNPC"
tbl.ID = 10092

function Quest318:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["31801"] = self.OnSubStart31801
    self.subStartHandlers["31802"] = self.OnSubStart31802
end

function Quest318:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["31801"] = self.OnSubFinish31801
    self.subFinishHandlers["31802"] = self.OnSubFinish31802
end

function Quest318:OnSubStart31801(arg1)
    print("31801 start:...")
end

function Quest318:OnSubStart31802(arg1)
    print("31802 start:...")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1
    avatarPos.y = avatarPos.y - 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    self:CreateQuestNpcByIdWithPos(31802, tbl.ID, 0, avatarPos, M.Dir2Euler(avatarForward))
end

function Quest318:OnSubFinish31801(arg1)
    print("OnFinished 31801")
end

function Quest318:OnSubFinish31802(arg1)
    print("OnFinished 31802")
    local questNpcActor = self:GetQuestNpcActor(tbl.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    self:ActionSafeCall(self.ShowTutorial)
end

function Quest318:ShowTutorial(arg1)
    self:CallDelay(1, function(arg1)
        arg1:ShowTutorialDialog(246)
    end)
end

function Quest318:Start() end
function Quest318:OnDestroy() end
return Quest318
