require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10100Trigger = class("Q10100Trigger", GadgetActorProxy)
Q10100Trigger.defaultAlias = "Q10100Trigger"
local Q10100ClientConfig = require("Quest/Client/Q10100ClientConfig")

local lisaData = Q10100ClientConfig.LisaData
local actor = actorMgr:GetActor(Q10100ClientConfig.ActorAlias)
function Q10100Trigger:OnPostDataPrepare() end

function Q10100Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(20, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10100Trigger:TriggerIn()
    print("In Q10100Trigger")
    local questNpcActor = actor:GetQuestNpcActor(lisaData.Lisa)
    if questNpcActor ~= nil then
        questNpcActor.DoFreeStateTrigger(questNpcActor)
        questNpcActor.EnableInteraction(questNpcActor, false)
        questNpcActor.WalkToTask(questNpcActor, lisaData.BornPos2, function(arg1)
            questNpcActor:SitOnChair(8010)
            questNpcActor:EnableInteraction(true)
        end)
    end
end

function Q10100Trigger:TriggerOut()
    print("Out Q10100Trigger")
    local questNpcActor = actor:GetQuestNpcActor(lisaData.Lisa)
    if questNpcActor ~= nil then
        questNpcActor.EnableInteraction(questNpcActor, false)
        questNpcActor.StandFromChair(questNpcActor)
        questNpcActor.DoFreeStateTrigger(questNpcActor)
        questNpcActor.WalkToTask(questNpcActor, lisaData.BornPos4, function(arg1)
            local n = math.random(1, 5)
            if n == 1 then
                questNpcActor:DoFreeStyle(1120)
            elseif n == 2 then
                questNpcActor:DoFreeStyle(1170)
            elseif n == 3 then
                questNpcActor:DoFreeStyle(1190)
            elseif n == 4 then
                questNpcActor:DoFreeStyle(1231)
            elseif n == 5 then
                questNpcActor:DoFreeStyle(1220)
            end
        end)
    end
end

return Q10100Trigger
