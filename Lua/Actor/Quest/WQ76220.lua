require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76220 = class("Quest76220", QuestActorProxy)
Quest76220.defaultAlias = "Quest76220"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76220:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76220:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7622001"] = self.OnSubStart7622001,
        ["7622002"] = self.OnSubStart7622002,
        ["7622003"] = self.OnSubStart7622003
    }
end

function Quest76220:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7622001"] = self.OnSubFinish7622001,
        ["7622002"] = self.OnSubFinish7622002,
        ["7622003"] = self.OnSubFinish7622003
    }
end

function Quest76220:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7622002"] = self.OnSubFailed7622002, ["7622003"] = self.OnSubFailed7622003}
end

function Quest76220:Start()
    print("Start")
end

function Quest76220:OnDestroy()
    print("OnDestroy")
end

function Quest76220:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76220:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76220:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7622003N1080Trigger")
    this:ActorDestroy("Q7622001Trigger", 76220)
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 3)
    this:RemoveLocalGadget(73177010, "0")
    this:RemoveLocalGadget(73177011, "1")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177035, "3")
    this:RemoveLocalGadget(73167060, "4")
    this:RemoveLocalGadget(73167060, "5")
    this:RecycleAllRes()
end

function Quest76220:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7622001Trigger", 76220)
end

function Quest76220:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7622001 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7622002 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest76220:ActorDestroy(arg1, arg2)
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

function Quest76220:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
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

function Quest76220:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76220:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76220:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 3236.828, y = 406.701, z = 9928.058}, 30, 73177007, 10000133, 7622002) then
        actorUtils.FinishQuestWithParam({false}, {7622002})
    else
        if this:GetSubQuestState(7622002) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76220:OnSubStart7622001(arg1)
    print("OnSubStart7622001")
    actorMgr:CreateActorWithPos("Q7622001Trigger", "Actor/Gadget/Q7622001Trigger", 70900002, 0, points.Q7622001Trigger.pos, points.Q7622001Trigger.rot, true, false, 3, nil, 0, 76220)
end

function Quest76220:OnSubFinish7622001(arg1)
    print("OnSubFinish7622001")
end

function Quest76220:OnSubStart7622002(arg1)
    print("OnSubStart7622002")
    this:RepeatSitCheck()
end

function Quest76220:OnSubFinish7622002(arg1)
    print("OnSubFinish7622002")
    this:ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest76220:OnSubFailed7622002(arg1)
    print("OnSubFailed7622002")
    this:RecycleAllRes()
end

function Quest76220:OnSubStart7622003(arg1)
    print("OnSubStart7622003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7622003, 0, 40, 0.5, npcs.Npc1080.id)
    this:CreateLocalGadget(73177010, "0", {x = 3233.725, y = 407.201, z = 9943.307}, {x = 0, y = 56.878, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "1", {x = 3232.71, y = 407.234, z = 9942.624}, {x = 0, y = 56.879, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 3234.551, y = 407.201, z = 9943.846}, {x = 0, y = 234.677, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "4", {x = 3233.404, y = 407.976, z = 9943.097}, {x = 0, y = 56.89, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "5", {x = 3233.404, y = 407.976, z = 9943.097}, {x = 0, y = 56.89, z = 0}, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1080.alias, 76220):SitOnTargetChair(8010, {x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0}, 0, false)
end

function Quest76220:OnSubFinish7622003(arg1)
    print("OnSubFinish7622003")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1080.alias)
        this:RecycleAllRes()
    end)
end

function Quest76220:OnSubFailed7622003(arg1)
    print("OnSubFailed7622003")
    this:RecycleAllRes()
end

return Quest76220
