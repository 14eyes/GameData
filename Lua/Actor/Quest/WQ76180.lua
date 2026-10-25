require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76180 = class("Quest76180", QuestActorProxy)
Quest76180.defaultAlias = "Quest76180"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76180:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76180:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7618002"] = self.OnSubStart7618002,
        ["7618003"] = self.OnSubStart7618003,
        ["7618004"] = self.OnSubStart7618004,
        ["7618001"] = self.OnSubStart7618001
    }
end

function Quest76180:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7618002"] = self.OnSubFinish7618002,
        ["7618003"] = self.OnSubFinish7618003,
        ["7618004"] = self.OnSubFinish7618004,
        ["7618001"] = self.OnSubFinish7618001
    }
end

function Quest76180:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7618003"] = self.OnSubFailed7618003, ["7618004"] = self.OnSubFailed7618004}
end

function Quest76180:Start()
    print("Start")
end

function Quest76180:OnDestroy()
    print("OnDestroy")
end

function Quest76180:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76180:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76180:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7618004N1318Trigger")
    this:ActorDestroy("Q7618002Trigger", 76180)
    this:SafeDestroyQuestNpc(npcs.Npc1318_1.alias, 3)
    this:RemoveLocalGadget(73167060, "4")
    this:RemoveLocalGadget(73167060, "5")
    this:RemoveLocalGadget(73177035, "3")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177011, "1")
    this:RemoveLocalGadget(73177010, "0")
    this:RecycleAllRes()
end

function Quest76180:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7618002Trigger", 76180)
end

function Quest76180:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7618001 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7618002 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    else
        if false then
        end
    end
end

function Quest76180:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76180:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest76180:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76180:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76180:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 2120.944, y = 108.701, z = 11204.45}, 35, 73177007, 10000133, 7618003) then
        actorUtils.FinishQuestWithParam({false}, {7618003})
    else
        if this:GetSubQuestState(7618003) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76180:OnSubStart7618002(arg1)
    print("OnSubStart7618002")
    actorMgr:CreateActorWithPos("Q7618002Trigger", "Actor/Gadget/Q7618002Trigger", 70900002, 0, points.Q7618002Trigger.pos, points.Q7618002Trigger.rot, true, false, 3, nil, 0, 76180)
end

function Quest76180:OnSubFinish7618002(arg1)
    print("OnSubFinish7618002")
end

function Quest76180:OnSubStart7618003(arg1)
    print("OnSubStart7618003")
    this:RepeatSitCheck()
end

function Quest76180:OnSubFinish7618003(arg1)
    print("OnSubFinish7618003")
end

function Quest76180:OnSubFailed7618003(arg1)
    print("OnSubFailed7618003")
    this:RecycleAllRes()
end

function Quest76180:OnSubStart7618004(arg1)
    print("OnSubStart7618004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7618004, 0, 40, 0.5, npcs.Npc1318_1.id)
end

function Quest76180:OnSubFinish7618004(arg1)
    print("OnSubFinish7618004")
    this:NpcDestroyImmediately(3, npcs.Npc1318_1.alias)
end

function Quest76180:OnSubFailed7618004(arg1)
    print("OnSubFailed7618004")
    this:RecycleAllRes()
end

function Quest76180:OnSubStart7618001(arg1)
    print("OnSubStart7618001")
    this:CreateQuestNpc(arg1, npcs.Npc1318_1.id, 0, false, 0)
    this:DisableMainPageByQuest(true, "MarionetteTeaTime")
    this:CreateLocalGadget(70711275, "6", {x = 2119.858, y = 109.449, z = 11204.19}, {x = 0, y = 240.795, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "5", {x = 2120.381, y = 109.449, z = 11203.53}, {x = 0, y = 240.795, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177041, "3", {x = 2120.401, y = 109.449, z = 11204.02}, {x = 0, y = 240.795, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 2120.622, y = 108.742, z = 11203.1}, {x = 0, y = 240.795, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "1", {x = 2119.713, y = 108.666, z = 11204.71}, {x = 0, y = 240.795, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177010, "0", {x = 2120.174, y = 108.671, z = 11203.9}, {x = 0, y = 240.795, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest76180:OnSubFinish7618001(arg1)
    print("OnSubFinish7618001")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1318_1.alias)
        this:RecycleAllRes()
    end)

    this:DisableMainPageByQuest(false, "MarionetteTeaTime")
end

return Quest76180
