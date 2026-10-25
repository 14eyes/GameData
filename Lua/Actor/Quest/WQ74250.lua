require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74250 = class("Quest74250", QuestActorProxy)
Quest74250.defaultAlias = "Quest74250"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest74250:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74250:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7425001"] = self.OnSubStart7425001,
        ["7425002"] = self.OnSubStart7425002,
        ["7425003"] = self.OnSubStart7425003,
        ["7425004"] = self.OnSubStart7425004
    }
end

function Quest74250:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7425001"] = self.OnSubFinish7425001,
        ["7425002"] = self.OnSubFinish7425002,
        ["7425003"] = self.OnSubFinish7425003,
        ["7425004"] = self.OnSubFinish7425004
    }
end

function Quest74250:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7425002"] = self.OnSubFailed7425002, ["7425003"] = self.OnSubFailed7425003}
end

function Quest74250:Start()
    print("Start")
end

function Quest74250:OnDestroy()
    print("OnDestroy")
end

function Quest74250:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74250:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74250:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7425003N1071Trigger")
    this:ActorDestroy("Q7425001Trigger", 74250)
    this:SafeDestroyQuestNpc(npcs.Npc1071.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074.alias, 3)
    this:RemoveLocalGadget(73177010, "1")
    this:RemoveLocalGadget(73177011, "5")
    this:RemoveLocalGadget(73177011, "4")
    this:RemoveLocalGadget(73177011, "3")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177012, "6")
    this:RemoveLocalGadget(73177013, "10")
    this:RemoveLocalGadget(73177013, "9")
    this:RemoveLocalGadget(73177013, "8")
    this:RemoveLocalGadget(73177013, "7")
    this:RemoveLocalGadget(73177041, "11")
    this:RecycleAllRes()
end

function Quest74250:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7425001Trigger", 74250)
end

function Quest74250:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7425001 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7425002 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest74250:ActorDestroy(arg1, arg2)
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

function Quest74250:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
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

function Quest74250:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest74250:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74250:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 3490.43, y = 429.83, z = 4614.9}, 20, 73177007, 10000133, 7425002) then
        actorUtils.FinishQuestWithParam({false}, {7425002})
    else
        if this:GetSubQuestState(7425002) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest74250:OnSubStart7425001(arg1)
    print("OnSubStart7425001")
    actorMgr:CreateActorWithPos("Q7425001Trigger", "Actor/Gadget/Q7425001Trigger", 70900002, 0, points.Q7425001Trigger.pos, points.Q7425001Trigger.rot, true, false, 3, nil, 0, 74250)
end

function Quest74250:OnSubFinish7425001(arg1)
    print("OnSubFinish7425001")
end

function Quest74250:OnSubStart7425002(arg1)
    print("OnSubStart7425002")
    this:RepeatSitCheck()
end

function Quest74250:OnSubFinish7425002(arg1)
    print("OnSubFinish7425002")
end

function Quest74250:OnSubFailed7425002(arg1)
    print("OnSubFailed7425002")
    this:RecycleAllRes()
end

function Quest74250:OnSubStart7425003(arg1)
    print("OnSubStart7425003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7425003, 0, 25, 0.5, npcs.Npc1071.id)
end

function Quest74250:OnSubFinish7425003(arg1)
    print("OnSubFinish7425003")
    this:NpcDestroyImmediately(3, npcs.Npc1071.alias)
end

function Quest74250:OnSubFailed7425003(arg1)
    print("OnSubFailed7425003")
    this:RecycleAllRes()
end

function Quest74250:OnSubStart7425004(arg1)
    print("OnSubStart7425004")
    this:CreateQuestNpc(arg1, npcs.Npc1071.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1074.id, 0, false, 0)
    this:CreateLocalGadget(73177010, "1", {x = 3493.334, y = 429.834, z = 4613.548}, {x = 0, y = 139.781, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "5", {x = 3494.012, y = 429.834, z = 4612.759}, {x = 0, y = 322.749, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "4", {x = 3492.568, y = 429.834, z = 4612.878}, {x = 0, y = 48.487, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "3", {x = 3494.118, y = 429.834, z = 4614.255}, {x = 0, y = 229.556, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 3492.591, y = 429.834, z = 4614.442}, {x = 0, y = 139.208, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "6", {x = 3492.954, y = 430.612, z = 4613.597}, {x = 0, y = 5.133, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "10", {x = 3493.61, y = 430.612, z = 4613.923}, {x = 0, y = 271.71, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "9", {x = 3493.719, y = 430.612, z = 4613.255}, {x = 0, y = 5.133, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "8", {x = 3493.069, y = 430.612, z = 4613.18}, {x = 0, y = 86.662, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "7", {x = 3492.967, y = 430.612, z = 4613.833}, {x = 0, y = 187.106, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177041, "11", {x = 3493.352, y = 430.612, z = 4613.204}, {x = 0, y = 271.71, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest74250:OnSubFinish7425004(arg1)
    print("OnSubFinish7425004")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1071.alias)
        this:NpcDestroyImmediately(3, npcs.Npc1072.alias)
        this:NpcDestroyImmediately(3, npcs.Npc1074.alias)
        this:RecycleAllRes()
    end)
end

return Quest74250
