require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40007Trigger1 = class("Q40007Trigger1", GadgetActorProxy)
Q40007Trigger1.defaultAlias = "Q40007Trigger1"
local Q40007ClientConfig = require("Quest/Client/Q40007ClientConfig")
local Q41312ClientConfig = require("Quest/Client/Q41312ClientConfig")

local thiefData = Q40007ClientConfig.ThiefData
local actor = actorMgr:GetActor(Q40007ClientConfig.ActorAlias)
local v = actorMgr:GetActor(Q41312ClientConfig.ActorAlias)
function Q40007Trigger1:OnPostDataPrepare() end

function Q40007Trigger1:OnPostComponentPrepare()
    self:AddComponentTrigger(6, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q40007Trigger1:TriggerIn()
    print("In Q40007Trigger")
    local n = actorUtils.GetAvatarPos() - thiefData.BornPos
    local questNpcActor = v:GetQuestNpcActor(thiefData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStateTrigger()
        questNpcActor:SteerToTask(n, 1, true, true)
        questNpcActor:PlayEmojiBubble("EmojiBubble_Emoji_Surprise")
    end
end

function Q40007Trigger1:TriggerOut()
    print("Out Q40007Trigger")
    local questNpcActor = v:GetQuestNpcActor(thiefData.Alias)
    if questNpcActor ~= nil then
        questNpcActor.SteerToTask(questNpcActor, M.Euler2DirXZ(thiefData.BornDir), 1, true, true)
        self:CallDelay(1.2, function()
            questNpcActor:DoFreeStyle(1280)
        end)
    end
end

return Q40007Trigger1
