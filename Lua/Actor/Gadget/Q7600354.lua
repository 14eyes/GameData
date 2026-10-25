require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600354 = class("Q7600354", GadgetActorProxy)
Q7600354.defaultAlias = "Q7600354"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600354:OnPostDataPrepare()
    print("Q7600354 - OnPostDataPrepare")
    this = self
end

function Q7600354:OnPostComponentPrepare()
    print("Q7600354 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600354:TriggerIn()
    print("Q7600354 - TriggerIn")
    this:DestroySelf()
    local actor = actorMgr:GetActor("76003")
    local v = actorMgr:GetActor("76003")
    local questNpcActor = v:GetQuestNpcActor(npcs.Npc21882.alias, 0)
    v:NpcRunToTask(questNpcActor, {x = 3338.373, y = 363.424, z = 9749.424}, function(arg1)
        local actor = actorMgr:GetActor("76003")
        local v = actorMgr:GetActor("76003")
        local questNpcActor = v:GetQuestNpcActor(npcs.Npc21882.alias, 0)
        v:NpcJumpToTask(questNpcActor, {x = 3343.465, y = 357.803, z = 9746.153}, 4483, function(arg1)
            local actor = actorMgr:GetActor("76003")
            local v = actorMgr:GetActor("76003")
            local questNpcActor = v:GetQuestNpcActor(npcs.Npc21882.alias, 0)
            v:NpcRunToTask(questNpcActor, {x = 3346.278, y = 357.672, z = 9745.634}, function(arg1)
                local actor = actorMgr:GetActor("76003")
                local v = actorMgr:GetActor("76003")
                local questNpcActor = v:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                v:NpcRunToTask(questNpcActor, {x = 3358.347, y = 357.789, z = 9753.82}, function(arg1)
                    local actor = actorMgr:GetActor("76003")
                    local v = actorMgr:GetActor("76003")
                    local questNpcActor = v:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                    v:NpcJumpToTask(questNpcActor, {x = 3372.273, y = 355.697, z = 9765.437}, 4483, function(arg1)
                        local actor = actorMgr:GetActor("76003")
                        local v = actorMgr:GetActor("76003")
                        local questNpcActor = v:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                        v:NpcRunToTask(questNpcActor, {x = 3380.694, y = 357.768, z = 9771.799}, function(arg1)
                            local actor = actorMgr:GetActor("76003")
                            local v = actorMgr:GetActor("76003")
                            local questNpcActor = v:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                            v:NpcRunToTask(questNpcActor, {x = 3383.171, y = 357.595, z = 9772.41}, function(arg1)
                                local actor = actorMgr:GetActor("76003")
                                local v = actorMgr:GetActor("76003")
                                local questNpcActor = v:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                                v:NpcRunToTask(questNpcActor, {x = 3387.654, y = 357.594, z = 9777.619}, function(arg1)
                                    local actor = actorMgr:GetActor("76003")
                                    local v = actorMgr:GetActor("76003")
                                    local questNpcActor = v:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                                    v:NpcRunToTask(questNpcActor, {x = 3392.865, y = 357.774, z = 9785.478}, function(arg1)
                                        actorUtils.FinishQuestID(false, 7600354)
                                    end, nil, nil, nil)
                                end, nil, nil, nil)
                            end, nil, nil, nil)
                        end, nil, nil, nil)
                    end, nil, nil, nil)
                end, nil, nil, nil)
            end, nil, nil, nil)
        end, nil, nil, nil)
    end, nil, nil, nil)
end

function Q7600354:PreTriggerIn()
    print("Q7600354 - PreTriggerIn")
end

function Q7600354:LightUpTriggerIn()
    print("Q7600354 - LightUpTriggerIn")
end

function Q7600354:TriggerOut()
    print("Q7600354 - TriggerOut")
end

return Q7600354
